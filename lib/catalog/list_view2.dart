import 'package:flutter/material.dart';

class MyListView2 extends StatelessWidget {
  const MyListView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View with ListTile'),
        ),
        body: ListView(children: <Widget>[
          const ListTile(
            title: Text('Title'),
            subtitle: Text('This is subtitle'),
            leading: Text('leading'),
            trailing: Text('This is trailing'),
          ),
          const Divider(
            height: 0,
          ),
          ListTile(
            title: const Text('This is ClickAble'),
            subtitle: const Text('This is subtitle'),
            onTap: () {},
          ),
          const Divider(
            height: 0,
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: const Text('This is ClickAble and 3 lines'),
            subtitle: const Text(
                'This is subtitle long than expected \nThis is in 3 line'),
            isThreeLine: true,
            onTap: () {},
          ),
          const Divider(
            height: 0,
          ),
        ]));
  }
}
