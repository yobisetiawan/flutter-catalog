import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {
  const MyWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wrap'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Wrap'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Wrap(
              spacing: 5.0,
              runSpacing: 5.0,
              children: [
                Container(
                  width: 100.0,
                  height: 30.0,
                  padding: const EdgeInsets.all(10),
                  color: Colors.deepOrange,
                ),
                Container(
                  width: 100.0,
                  height: 30.0,
                  padding: const EdgeInsets.all(10),
                  color: Colors.deepOrange,
                ),
                Container(
                  width: 100.0,
                  height: 30.0, 
                  padding: const EdgeInsets.all(10),
                  color: Colors.deepOrange,
                ),
                Container(
                  width: 100.0,
                  height: 30.0,
                  padding: const EdgeInsets.all(10),
                  color: Colors.deepOrange,
                ),
                Container(
                  width: 100.0,
                  height: 30.0,
                  padding: const EdgeInsets.all(10),
                  color: Colors.deepOrange,
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
                'Kalo pake wrap contentnya ga akan overflow seperti pke row'),
          )
        ]));
  }
}
