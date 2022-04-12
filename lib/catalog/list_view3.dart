import 'package:flutter/material.dart';

class MyListView3 extends StatelessWidget {
  const MyListView3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _number = 20;
    Widget _buildItem(int idx) {
      return ListTile(
        leading: CircleAvatar(
          child: Text('$idx'),
        ),
        title: Text('Item $idx'),
        trailing: const Icon(Icons.dashboard),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('List View builder'),
      ),
      body: ListView.builder(
        itemCount: _number * 2,
       // padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext context, int i) {
          if (i.isOdd) return const Divider();
          final index = i ~/ 2 + 1; 
          return _buildItem(index);
        },
      ),
    );
  }
}
