import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Item 1'),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Item 2'),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Item 3'),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Item 4'),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Item 5'),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Item 6'),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Item 7'),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Item 8'),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Item 9'),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Item 10'),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Item 11'),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Item 12'),
          ),
          const Divider(),
          const Divider(),
        ]));
  }
}
