// ignore_for_file: public_member_api_docs

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:intl/intl.dart';

// Future<void> main() async {
//   runApp(const MyApp(''));
// }

class PrintQR extends StatelessWidget {
  const PrintQR(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var tgl = DateFormat("EEEEE, dd-MM-yyyy").format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Cetak Presensi',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
        leading: IconButton(
          icon: const Icon(
            Iconsax.arrow_left_2,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: PdfPreview(
        pdfFileName: 'Presensi_Mahasiswa_${tgl}.pdf',
        padding: EdgeInsets.only(top: 20),
        build: (format) =>
            _generatePdf(format, 'Presensi dibuka sampai $title'),
      ),
    );
  }

  Future<Uint8List> _generatePdf(PdfPageFormat format, String title) async {
    final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
    final font = await PdfGoogleFonts.nunitoExtraLight();
    final image = await imageFromAssetBundle('images/logo/qr-pdf.png');

    pdf.addPage(
      pw.Page(
        pageFormat: format,
        build: (context) {
          return pw.Column(
            children: [
              pw.SizedBox(
                width: double.infinity,
                child: pw.FittedBox(
                  child: pw.Text(title, style: pw.TextStyle(font: font)),
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Image(image)

              // pw.Flexible(child: pw.FlutterLogo())
              // pw.SvgImage(svg: 'images/logo/sakit.svg')
              // pw.SvgImage('images/logo/qr-print.png')
            ],
          );
        },
      ),
    );

    return pdf.save();
  }
}
