import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Box Card'),
          ),
          const Card(
            margin: EdgeInsets.all(15),
            child: SizedBox(
              height: 150,
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            margin: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  height: 180,
                  child: Stack(
                    children: [
                      Positioned.fill(
                          child: Image.asset(
                        'assets/images/luffy.jpeg',
                        fit: BoxFit.cover,
                      )),
                      Positioned(
                        bottom: 16.0,
                        left: 16.0,
                        right: 16.0,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Ukuran  text ini dinamis sesuai dengan lebar box ',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () {}, child: const Text('No')),
                    TextButton(onPressed: () {}, child: const Text('Yes'))
                  ],
                )
              ],
            ),
          ),
        ]));
  }
}
