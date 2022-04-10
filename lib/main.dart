import 'package:catalog/catalog/button.dart';
import 'package:catalog/catalog/counter.dart';
import 'package:catalog/catalog/image.dart';
import 'package:catalog/catalog/text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MenuCatalog(),
    );
  }
}

class MenuCatalog extends StatelessWidget {
  const MenuCatalog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    void goto(c) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => c),
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Catalog'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Widget: Statefull counter',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: ElevatedButton(
                child: const Text('View'),
                onPressed: () {
                  goto(const MyCounter(
                    title: 'Counter',
                  ));
                },
              )),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Widget: Image',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: ElevatedButton(
                child: const Text('View'),
                onPressed: () {
                  goto(const MyImage());
                },
              )),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Widget: Text',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: ElevatedButton(
                child: const Text('View'),
                onPressed: () {
                  goto(const MyText());
                },
              )),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Widget: Button',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: ElevatedButton(
                child: const Text('View'),
                onPressed: () {
                  goto(const MyButton());
                },
              )),
        ]));
  }
}
