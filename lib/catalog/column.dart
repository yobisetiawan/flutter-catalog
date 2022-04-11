import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Column'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Column'),
          ),
          Column(
            children: [
              Container(
                color: Colors.blueAccent,
                height: 100.0,
                width: double.infinity,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Col1'),
              ),
              Container(
                color: Colors.amberAccent,
                height: 100.0,
                width: double.infinity,
                padding: const EdgeInsets.all(10.0),
                child: const Text('Col2'),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Row Alignments'),
          ),
          SizedBox(
            height: 300.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blueAccent,
                  height: 100.0,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Col1'),
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100.0,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Col2'),
                )
              ],
            ),
          ),
          const Divider(),
          SizedBox(
            height: 300.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blueAccent,
                  height: 100.0,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Col1'),
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100.0,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Col2'),
                )
              ],
            ),
          ),
          const Divider(),
          SizedBox(
            height: 300.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.blueAccent,
                  height: 100.0,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Col1'),
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100.0,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Col2'),
                )
              ],
            ),
          ),
          const Divider(),
          SizedBox(
            height: 300.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.blueAccent,
                  height: 100.0,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Col1'),
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100.0,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Col2'),
                )
              ],
            ),
          ),
          const Divider(),
          SizedBox(
            height: 300.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.blueAccent,
                  height: 100.0,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Col1'),
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100.0,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Col2'),
                )
              ],
            ),
          ),
          const Divider(),
          SizedBox(
            height: 300.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.blueAccent,
                  height: 100.0,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Col1'),
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100.0,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Col2'),
                )
              ],
            ),
          ),
          const Divider(),
          const SizedBox(
            height: 50,
          )
        ]));
  }
}
