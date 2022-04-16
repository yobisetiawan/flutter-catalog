import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  const MyGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid'),
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this would produce 2 rows.
        crossAxisCount: 2,
        // Generate 100 Widgets that display their index in the List
        children: List.generate(50, (index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 3.0),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Item ${index + 1}',
              style: Theme.of(context).textTheme.headline5,
            ),
          );
        }),
      ),
    );
  }
}
