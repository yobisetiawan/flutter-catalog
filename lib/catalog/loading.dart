import 'package:flutter/material.dart';

class MyLoading extends StatelessWidget {
  const MyLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Loading'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Loading LinearProgressIndicator'),
          ),
          const LinearProgressIndicator(),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Loading CircularProgressIndicator'),
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: CircularProgressIndicator(),
          ),
          const SizedBox(
            height: 30,
          ),
        ]));
  }
}
