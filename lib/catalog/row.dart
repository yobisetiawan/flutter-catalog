import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Row'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Row'),
          ),
          Row(
            children: [
              Container(
                color: Colors.blueAccent,
                height: 100.0,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Row1'),
              ),
              Container(
                color: Colors.amberAccent,
                height: 100.0,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Row2'),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Row Alignments'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.blueAccent,
                height: 100.0,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Row1'),
              ),
              Container(
                color: Colors.amberAccent,
                height: 100.0,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Row2'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blueAccent,
                height: 100.0,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Row1'),
              ),
              Container(
                color: Colors.amberAccent,
                height: 100.0,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Row2'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                color: Colors.blueAccent,
                height: 100.0,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Row1'),
              ),
              Container(
                color: Colors.amberAccent,
                height: 100.0,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Row2'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.blueAccent,
                height: 100.0,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Row1'),
              ),
              Container(
                color: Colors.amberAccent,
                height: 100.0,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Row2'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.blueAccent,
                height: 100.0,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Row1'),
              ),
              Container(
                color: Colors.amberAccent,
                height: 100.0,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Row2'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.blueAccent,
                height: 100.0,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Row1'),
              ),
              Container(
                color: Colors.amberAccent,
                height: 100.0,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Row2'),
              )
            ],
          ),
        ]));
  }
}
