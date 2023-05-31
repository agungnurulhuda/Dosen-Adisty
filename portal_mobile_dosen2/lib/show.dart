import 'package:flutter/material.dart';

class Show extends StatefulWidget {
  const Show({Key? key}) : super(key: key);

  @override
  _ShowState createState() => _ShowState();
}

class _ShowState extends State<Show> {
  bool _showContainer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show/Hide Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _showContainer = !_showContainer;
                });
              },
              child: Text(_showContainer ? 'Hide Container' : 'Show Container'),
            ),
            Visibility(
              visible: _showContainer,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Hello, World!',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
