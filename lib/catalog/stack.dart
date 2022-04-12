import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stack'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Stack'),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: 300.0,
                  height: 300.0,
                  color: Colors.deepPurpleAccent,
                ),
                Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.green,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.red,
                )
              ],
            ),
          )
        ]));
  }
}
