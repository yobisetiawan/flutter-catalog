import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Button'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Text Button'),
          ),
          Center(
            child: TextButton(onPressed: () {}, child: const Text('Submit')),
          ),
          const Center(
            child: TextButton(
              onPressed: null,
              child: Text('Disabled'),
            ),
          ),
          Center(
            child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 18,
              ),
              label: const Text('Add New'),
            ),
          ),
          Center(
            child: SizedBox(
              width: 40.0,
              child: TextButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    size: 18,
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh ElevatedButton'),
          ),
          Center(
            child:
                ElevatedButton(onPressed: () {}, child: const Text('Submit')),
          ),
          const Center(
            child: ElevatedButton(
              onPressed: null,
              child: Text('Disabled'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
              ),
              child: const Text("Button rounded"),
            ),
          ),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 18,
              ),
              label: const Text('Add New'),
            ),
          ),
          Center(
            child: SizedBox(
              width: 40.0,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    //  minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    size: 18,
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh OutlinedButton'),
          ),
          Center(
            child:
                OutlinedButton(onPressed: () {}, child: const Text('Submit')),
          ),
          const Center(
            child: OutlinedButton(
              onPressed: null,
              child: Text('Disabled'),
            ),
          ),
          Center(
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
              ),
              child: const Text("Button rounded"),
            ),
          ),
          Center(
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 18,
              ),
              label: const Text('Add New'),
            ),
          ),
          Center(
            child: SizedBox(
              width: 40.0,
              child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    //  minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    size: 18,
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Icon Btn'),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: IconButton(
              onPressed: () {},
              iconSize: 24.0,
              icon: const Icon(Icons.add),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ]));
  }
}
