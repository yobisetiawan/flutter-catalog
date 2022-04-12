import 'package:flutter/material.dart';

class MyFormInput extends StatelessWidget {
  const MyFormInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form Input'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh TextField'),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Place Holder',
                labelText: 'Label Text',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh TextField Max Length'),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              maxLength: 5,
              decoration: InputDecoration(
                hintText: 'TextField with maxLength',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh TextField Multiline'),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'TextField with multiline',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh TextField Outline'),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'TextField OutlineInputBorder',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh TextField BorderLess'),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              decoration: InputDecoration.collapsed( 
                hintText: 'Contoh TextField BorderLess',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh TextField Password'),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                hintText: 'TextField obscureText true',
              ),
            ),
          ),
        ]));
  }
}
