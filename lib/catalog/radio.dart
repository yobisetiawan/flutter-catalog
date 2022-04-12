import 'package:flutter/material.dart';

class MyRadio extends StatelessWidget {
  const MyRadio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Button'),
      ),
      body: ListView(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(15),
          color: Colors.black12,
          child: const Text('Contoh Radio Button'),
        ),
      ]),
    );
  }
}
