import 'package:flutter/material.dart';

class MyInkWell extends StatelessWidget {
  const MyInkWell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('InkWell'),
        ),
        body: ListView(children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                'Inkwel mirip seperti <a href="#"></a> di web dia bisa me wrap widget jadi clickable'),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh InkWell'),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {},
              child: const Text('Test Ink well'),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Card(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: const Text('test inkwell in card'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: const Text('test inkwell in card'),
                    ),
                  ),
                ),
              ),
            ],
          )
        ]));
  }
}
