import 'package:catalog/catalog/alert.dart';
import 'package:catalog/catalog/button.dart';
import 'package:catalog/catalog/card.dart';
import 'package:catalog/catalog/checkbox.dart';
import 'package:catalog/catalog/column.dart';
import 'package:catalog/catalog/container.dart';
import 'package:catalog/catalog/counter.dart';
import 'package:catalog/catalog/expand_sizedbox.dart';
import 'package:catalog/catalog/expansion_tile.dart';
import 'package:catalog/catalog/form_input.dart';
import 'package:catalog/catalog/fractionally_sized_box.dart';
import 'package:catalog/catalog/grid.dart';
import 'package:catalog/catalog/icon.dart';
import 'package:catalog/catalog/image.dart';
import 'package:catalog/catalog/inkwell.dart';
import 'package:catalog/catalog/list_view.dart';
import 'package:catalog/catalog/list_view2.dart';
import 'package:catalog/catalog/list_view3.dart';
import 'package:catalog/catalog/list_view4.dart';
import 'package:catalog/catalog/loading.dart';
import 'package:catalog/catalog/nav_bottom_sheet.dart';
import 'package:catalog/catalog/nav_bottom_tab.dart';
import 'package:catalog/catalog/nav_drawer.dart';
import 'package:catalog/catalog/nav_tab.dart';
import 'package:catalog/catalog/navbar_bottom.dart';
import 'package:catalog/catalog/radio.dart';
import 'package:catalog/catalog/row.dart';
import 'package:catalog/catalog/slider.dart';
import 'package:catalog/catalog/snack_bar.dart';
import 'package:catalog/catalog/stack.dart';
import 'package:catalog/catalog/switch.dart';
import 'package:catalog/catalog/text.dart';
import 'package:catalog/catalog/wrap.dart';
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
        "to": const MyContainer(),
        "title": const Text("Widget: Container"),
      },
      {
        "to": const MyFractionallySizedBox(),
        "title": const Text("Widget: FractionallySizedBox"),
      },
      {
        "to": const MyExpanded(),
        "title": const Text("Widget: Expanded + SizedBox"),
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
        "to": const MyWrap(),
        "title": const Text("Widget: Wrap"),
      },
      {
        "to": const MyStack(),
        "title": const Text("Widget: Stack"),
      },
      {
        "to": const MyCard(),
        "title": const Text("Widget: Card"),
      },
      {
        "to": const MyInkWell(),
        "title": const Text("Widget: InkWell"),
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
        "to": const MySwitch(),
        "title": const Text("Widget: Switch"),
      },
      {
        "to": const MySlider(),
        "title": const Text("Widget: Slider"),
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
        "to": const MySnackBar(),
        "title": const Text("Widget: SnackBar"),
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
      {
        "to": const MyListView4(),
        "title": const Text("Widget: ListView Multiple"),
      },
      {
        "to": const MyGrid(),
        "title": const Text("Widget: Grid"),
      },
      {
        "to": const MyNavTab(),
        "title": const Text("Widget: Nav Tab"),
      },
      {
        "to": const MyNavDrawer(),
        "title": const Text("Widget: Nav Drawer"),
      },
      {
        "to": const MyNavBottomSheet(),
        "title": const Text("Widget: Nav Bottom Sheet"),
      },
      {
        "to": const MyNavBottomTabbarExample(),
        "title": const Text("Widget: Nav Bottom Tab"),
      },
       {
        "to": const BottomNavigationBarExample(),
        "title": const Text("Widget: Navbar Bottom"),
      },
      {
        "to": const MyAlert(),
        "title": const Text("Widget: Alert"),
      },
      {
        "to": const MyExpansionTile(),
        "title": const Text("Widget: ExpansionTile"),
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
          if (i.isOdd) {
            return const Divider(
              height: 0,
            );
          }

          final index = i ~/ 2;
          return _buildItem(index);
        },
      ),
    );
  }
}
