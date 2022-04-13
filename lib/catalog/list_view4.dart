import 'package:flutter/material.dart';

class MyListView4 extends StatelessWidget {
  const MyListView4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildBox({Color? color}) => Container(
        margin: const EdgeInsets.all(5),
        height: 100,
        width: 200,
        color: color);

    Widget _horizontalListView() {
      return SizedBox(
        height: 120,
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, __) => _buildBox(color: Colors.orange),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Multiple'),
      ),
      body: ListView.builder(
        itemCount: 7,
       
        itemBuilder: (_, i) {
          if (i == 1 || i == 3) {
            return _horizontalListView();
          } else {
            return _buildBox(color: Colors.blue);
          }
        },
      ),
    );
  }
}
