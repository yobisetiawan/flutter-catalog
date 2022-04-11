import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Icon'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Icon'),
          ),
          const Icon(
            Icons.image,
            size: 64.0,
          ),
          const Text(
            'check this link for more icons https://api.flutter.dev/flutter/material/Icons-class.html',
            textAlign: TextAlign.center,
          )
        ]));
  }
}
