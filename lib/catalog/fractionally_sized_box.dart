import 'package:flutter/material.dart';

class MyFractionallySizedBox extends StatelessWidget {
  const MyFractionallySizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FractionallySizedBox'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh FractionallySizedBox'),
          ),
          const SizedBox(height: 20),
          const Text(
            'Fractionally sized box sizes its child to a fraction of the '
            'total available space.',
          ),
          const Text(
            'To use it inside a column or a row, wrap it in a Flexible widget',
          ),
          const Text(
            'FractionallySizedBox with no child serves as whitespace. '
            'The whitespace below always takes 10% of the available height',
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'The placeholder below always takes 50% of the available height and 50% of the width.\n',
          ),
          Container(
            height: 400.0,
            color: Colors.blue,
            child: Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.5,
                widthFactor: 0.5,
                child: Container(
                  child: const Text('Test'),
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
