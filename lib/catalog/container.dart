import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Container'),
          ),
          Center(
            // Container is a rectangle area on the screen.
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.teal,
              child: Padding(
                // const EdgeInsets.all: same padding value for all 4 directions.
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  // Container.color should not be set when decoration is set.
                  decoration: BoxDecoration(
                    border: Border.all(width: 10.0, color: Colors.white),
                    color: Colors.green,
                    borderRadius: const BorderRadius.all(Radius.circular(60.0)),
                  ),
                  // Container.padding is implementd internally with Padding widgets.
                  // const EdgeInsets.fromLTRB: specify padding for left/right/top/bottom.
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
                  child: Container(
                    color: Colors.purple,
                    // const EdgeInsets.symmetric: specify vertical/horizontal padding.
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    // Rotation.
                    transform: Matrix4.rotationZ(0.5),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(20.0),
                          right: Radius.circular(20.0),
                        ),
                      ),
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.all(10.0),
                      child: const Text("Bro"),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
