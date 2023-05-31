import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class SliderPerkuliahanHariIni extends StatefulWidget {
  const SliderPerkuliahanHariIni({Key? key}) : super(key: key);

  @override
  State<SliderPerkuliahanHariIni> createState() =>
      _SliderPerkuliahanHariIniState();
}

class _SliderPerkuliahanHariIniState extends State<SliderPerkuliahanHariIni> {
  final List tes = [
    Column(
      children: const [
        Text(
          '10:00',
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: Color(0xFFFFFFFF)),
        ),
        SizedBox(height: 34, child: TextBerjalanMatkul01())
      ],
    ),
    Column(
      children: const [
        Text(
          '11:30',
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: Color(0xFFFFFFFF)),
        ),
        SizedBox(height: 34, child: TextBerjalanMatkul02())
      ],
    ),
    Column(
      children: const [
        Text(
          '14:00',
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: Color(0xFFFFFFFF)),
        ),
        Text(
          'Dasar Hukum',
          style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  ];

  int current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // width: 200,
          height: 98,
          child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlayInterval: const Duration(seconds: 7),
              onPageChanged: (index, carouseLReason) {
                setState(() {
                  current = index;
                });
              },
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: tes
                .map((item) => Container(
                      margin: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
                          child: item),
                    ))
                .toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: tes.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: current == entry.key
                  ? Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.white)
                              .withOpacity(current == entry.key ? 0.9 : 0.4)),
                    )
                  : Container(
                      width: 6.0,
                      height: 6.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.white)
                              .withOpacity(current == entry.key ? 0.9 : 0.4)),
                    ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class SliderAkademik extends StatefulWidget {
  const SliderAkademik({Key? key}) : super(key: key);

  @override
  State<SliderAkademik> createState() => _SliderAkademikState();
}

class _SliderAkademikState extends State<SliderAkademik> {
  final List tes = [
    Column(
      children: const [
        Text(
          '2',
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: Color(0xFFFFFFFF)),
        ),
        Text(
          'Pendidikan',
          style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500),
        )
      ],
    ),
    Column(
      children: const [
        Text(
          '2',
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: Color(0xFFFFFFFF)),
        ),
        Text(
          'Publikasi',
          style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500),
        )
      ],
    ),
    Column(
      children: const [
        Text(
          '0',
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: Color(0xFFFFFFFF)),
        ),
        Text(
          'Pengabdian',
          style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500),
        )
      ],
    ),
    Column(
      children: const [
        Text(
          '2',
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: Color(0xFFFFFFFF)),
        ),
        Text(
          'Penunjang',
          style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500),
        )
      ],
    ),
  ];

  int current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            // width: 200,
            // color: Colors.blue,
            // height: 80,
            child: CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, carouseLReason) {
                  setState(() {
                    current = index;
                  });
                },
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: tes
                  .map((item) => Container(
                        margin: const EdgeInsets.all(2.0),
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0)),
                            child: item),
                      ))
                  .toList(),
            ),
          ),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: tes.asMap().entries.map((entry) {
        //     return GestureDetector(
        //       onTap: () => _controller.animateToPage(entry.key),
        //       child: current == entry.key
        //           ? Container(
        //               width: 8.0,
        //               height: 8.0,
        //               margin: const EdgeInsets.symmetric(
        //                   vertical: 8.0, horizontal: 2.0),
        //               decoration: BoxDecoration(
        //                   shape: BoxShape.circle,
        //                   color: (Theme.of(context).brightness ==
        //                               Brightness.dark
        //                           ? Colors.white
        //                           : Colors.white)
        //                       .withOpacity(current == entry.key ? 0.9 : 0.4)),
        //             )
        //           : Container(
        //               width: 6.0,
        //               height: 6.0,
        //               margin: const EdgeInsets.symmetric(
        //                   vertical: 8.0, horizontal: 2.0),
        //               decoration: BoxDecoration(
        //                   shape: BoxShape.circle,
        //                   color: (Theme.of(context).brightness ==
        //                               Brightness.dark
        //                           ? Colors.white
        //                           : Colors.white)
        //                       .withOpacity(current == entry.key ? 0.9 : 0.4)),
        //             ),
        //     );
        //   }).toList(),
        // ),
      ],
    );
  }
}

// class TesSlider extends StatefulWidget {
//   const TesSlider({Key? key}) : super(key: key);

//   @override
//   State<TesSlider> createState() => _TesSliderState();
// }

// class _TesSliderState extends State<TesSlider> {
//   final List<String> imgList = [
//     'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//     'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//     'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//     'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//     'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//     'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
//   ];

//   int _current = 0;
//   final CarouselController _controller = CarouselController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF2B86C4),
//       appBar: AppBar(
//         title: Text('Testing Slider'),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Container(
//             child: CarouselSlider(
//               options: CarouselOptions(
//                 viewportFraction: 1,
//                 onPageChanged: (index, carouseLReason) {
//                   setState(() {
//                     _current = index;
//                   });
//                 },
//                 autoPlay: true,
//                 aspectRatio: 2.0,
//                 enlargeCenterPage: true,
//               ),
//               items: imgList
//                   .map((item) => Container(
//                         child: Container(
//                           margin: EdgeInsets.all(5.0),
//                           child: ClipRRect(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(5.0)),
//                               child: Stack(
//                                 children: <Widget>[
//                                   Image.network(
//                                     item,
//                                     fit: BoxFit.cover,
//                                     width: 1000,
//                                   ),
//                                   Positioned(
//                                     bottom: 0.0,
//                                     left: 0.0,
//                                     right: 0.0,
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         gradient: LinearGradient(
//                                           colors: [
//                                             Color.fromARGB(200, 0, 0, 0),
//                                             Color.fromARGB(0, 0, 0, 0)
//                                           ],
//                                           begin: Alignment.bottomCenter,
//                                           end: Alignment.topCenter,
//                                         ),
//                                       ),
//                                       padding: EdgeInsets.symmetric(
//                                           vertical: 10.0, horizontal: 20.0),
//                                       child: Text(
//                                         'No. ${imgList.indexOf(item)} image',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20.0,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               )),
//                         ),
//                       ))
//                   .toList(),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: imgList.asMap().entries.map((entry) {
//               return GestureDetector(
//                 onTap: () => _controller.animateToPage(entry.key),
//                 child: _current == entry.key
//                     ? Container(
//                         width: 6.0,
//                         height: 6.0,
//                         margin: EdgeInsets.symmetric(
//                             vertical: 8.0, horizontal: 2.0),
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color:
//                                 (Theme.of(context).brightness == Brightness.dark
//                                         ? Colors.white
//                                         : Colors.white)
//                                     .withOpacity(
//                                         _current == entry.key ? 0.9 : 0.4)),
//                       )
//                     : Container(
//                         width: 3,
//                         height: 3,
//                         margin: EdgeInsets.symmetric(
//                             vertical: 8.0, horizontal: 4.0),
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color:
//                                 (Theme.of(context).brightness == Brightness.dark
//                                         ? Colors.white
//                                         : Colors.white)
//                                     .withOpacity(
//                                         _current == entry.key ? 0.9 : 0.4)),
//                       ),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ImageSliderDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Image slider demo')),
//       body: Container(
//           child: CarouselSlider(
//         options: CarouselOptions(),
//         items: imgList
//             .map((item) => Container(
//                   child: Center(
//                       child:
//                           Image.network(item, fit: BoxFit.cover, width: 1000)),
//                 ))
//             .toList(),
//       )),
//     );
//   }
// }

// class AkademikPenelitian extends StatelessWidget {
//   const AkademikPenelitian({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Text(
//           '2',
//           style: TextStyle(
//               fontSize: 36,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//               fontFamily: 'Poppins'),
//         ),
//         Text(
//           'Penelitian',
//           style: TextStyle(
//               fontSize: 14,
//               color: Colors.white,
//               fontFamily: 'Poppins',
//               fontWeight: FontWeight.w500),
//         )
//       ],
//     );
//   }
// }

// class AkademikPengabdian extends StatelessWidget {
//   const AkademikPengabdian({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Text(
//           '2',
//           style: TextStyle(
//               fontSize: 36,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//               fontFamily: 'Poppins'),
//         ),
//         Text(
//           'Pengabdian',
//           style: TextStyle(
//               fontSize: 14,
//               color: Colors.white,
//               fontFamily: 'Poppins',
//               fontWeight: FontWeight.w500),
//         )
//       ],
//     );
//   }
// }

// class AkademikPublikasi extends StatelessWidget {
//   const AkademikPublikasi({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Text(
//           '2',
//           style: TextStyle(
//               fontSize: 36,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//               fontFamily: 'Poppins'),
//         ),
//         Text(
//           'Penelitian',
//           style: TextStyle(
//               fontSize: 14,
//               color: Colors.white,
//               fontFamily: 'Poppins',
//               fontWeight: FontWeight.w500),
//         )
//       ],
//     );
//   }
// }

class TextBerjalanMatkul01 extends StatefulWidget {
  const TextBerjalanMatkul01({Key? key}) : super(key: key);

  @override
  State<TextBerjalanMatkul01> createState() => _TextBerjalanMatkul01State();
}

class _TextBerjalanMatkul01State extends State<TextBerjalanMatkul01> {
  @override
  Widget build(BuildContext context) {
    return Marquee(
      text: 'Analisis Perancangan Perangkat Lunak',
      style: const TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      blankSpace: 28.0,
      velocity: 90.0,
      pauseAfterRound: const Duration(seconds: 1),
      startPadding: 0.0,
      accelerationDuration: const Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: const Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    );
  }
}

class TextBerjalanMatkul02 extends StatefulWidget {
  const TextBerjalanMatkul02({Key? key}) : super(key: key);

  @override
  State<TextBerjalanMatkul02> createState() => _TextBerjalanMatkul02State();
}

class _TextBerjalanMatkul02State extends State<TextBerjalanMatkul02> {
  @override
  Widget build(BuildContext context) {
    return Marquee(
      text: 'Strategi Algoritma',
      style: const TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      blankSpace: 28.0,
      velocity: 90.0,
      pauseAfterRound: const Duration(seconds: 1),
      startPadding: 0.0,
      accelerationDuration: const Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: const Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    );
  }
}
