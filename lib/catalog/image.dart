import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Image'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Contoh gambar'),
          ),
          const Image(image: AssetImage('assets/images/luffy.jpeg')),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Contoh gambar avatar'),
          ),
          const CircleAvatar(
            radius: 50.0,
            child: ClipOval(
              child: Image(
                image: AssetImage('assets/images/luffy.jpeg'),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: const SizedBox(
                  width: 120,
                  height: 120,
                  child: Image(
                    image: AssetImage('assets/images/luffy.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ]));
  }
}
