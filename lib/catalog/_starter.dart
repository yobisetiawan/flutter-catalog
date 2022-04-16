import 'package:flutter/material.dart';

class MyCom extends StatelessWidget {
  const MyCom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyCom'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh MyCom'),
          ),
        ],
      ),
    );
  }
}
