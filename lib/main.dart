import 'package:catalog/catalog/button.dart';
import 'package:catalog/catalog/card.dart';
import 'package:catalog/catalog/checkbox.dart';
import 'package:catalog/catalog/column.dart';
import 'package:catalog/catalog/counter.dart';
import 'package:catalog/catalog/form_input.dart';
import 'package:catalog/catalog/icon.dart';
import 'package:catalog/catalog/image.dart';
import 'package:catalog/catalog/list_view.dart';
import 'package:catalog/catalog/list_view2.dart';
import 'package:catalog/catalog/list_view3.dart';
import 'package:catalog/catalog/loading.dart';
import 'package:catalog/catalog/radio.dart';
import 'package:catalog/catalog/row.dart';
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
    List<Map<String, Widget>> mapObj1 = [
      {
        "to": const MyCounter(
          title: 'Counter',
        ),
        "title": const Text("Widget: Statefull Counter"),
      },
      {
        "to": const MyImage(),
        "title": const Text("Widget: Image"),
      },
      {
        "to": const MyText(),
        "title": const Text("Widget: Text"),
      },
      {
        "to": const MyIcon(),
        "title": const Text("Widget: Icon"),
      },
      {
        "to": const MyButton(),
        "title": const Text("Widget: Button"),
      },
      {
        "to": const MyCard(),
        "title": const Text("Widget: Card"),
      },
      {
        "to": const MyRow(),
        "title": const Text("Widget: Row"),
      },
      {
        "to": const MyColumn(),
        "title": const Text("Widget: Column"),
      },
      {
        "to": const MyFormInput(),
        "title": const Text("Widget: TextField"),
      },
      {
        "to": const MyCheckBox(),
        "title": const Text("Widget: Checkbox"),
      },
      {
        "to": const MyRadio(),
        "title": const Text("Widget: Radio"),
      },
      {
        "to": const MyLoading(),
        "title": const Text("Widget: Loading"),
      },
      {
        "to": const MyListView(),
        "title": const Text("Widget: ListView"),
      },
      {
        "to": const MyListView2(),
        "title": const Text("Widget: ListView with ListTile"),
      },
      {
        "to": const MyListView3(),
        "title": const Text("Widget: ListView Builder"),
      },
    ];

    void goto(c) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => c),
      );
    }

    Widget _buildItem(int idx) {
      return ListTile(
        title: mapObj1[idx]['title'],
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          goto(mapObj1[idx]['to']);
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Catalog'),
      ),
      body: ListView.builder(
        itemCount: mapObj1.length * 2,
        // padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext context, int i) {
          if (i.isOdd) return const Divider(height: 0,);
          final index = i ~/ 2;
          return _buildItem(index);
        },
      ),
    );
  }
}
