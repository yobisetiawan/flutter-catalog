import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Slider'),
          ),
          const SliderBasic()
        ]));
  }
}

class SliderBasic extends StatefulWidget {
  const SliderBasic({Key? key}) : super(key: key);

  @override
  State<SliderBasic> createState() => _SliderBasicState();
}

class _SliderBasicState extends State<SliderBasic> {
  double _val = 50.0;
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _val,
      max: 100,
      divisions: 10,
      label: '${_val.round()}',
      onChanged: (double v) {
        setState(() {
          _val = v;
        });
      },
    );
  }
}
