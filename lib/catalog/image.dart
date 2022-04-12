import 'package:cached_network_image/cached_network_image.dart';
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
            color: Colors.black12,
            child: const Text('Contoh gambar local assets'),
          ),
          const Image(image: AssetImage('assets/images/luffy.jpeg')),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh gambar network'),
          ),
          Image.network('https://picsum.photos/250?image=9'),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh gambar avatar'),
          ),
          const SizedBox(
            height: 50,
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
          const SizedBox(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh gambar cache'),
          ),
          CachedNetworkImage(
            imageUrl:
                'https://images.unsplash.com/photo-1532264523420-881a47db012d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9',
          ),
           const SizedBox(
            height: 50,
          ),
        ]));
  }
}
