import 'package:flutter/material.dart';

class MyRadio extends StatelessWidget {
  const MyRadio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Button'),
      ),
      body: ListView(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(15),
          color: Colors.black12,
          child: const Text('Contoh Radio Button'),
        ),
        const RadioBasic(),
        Container(
          padding: const EdgeInsets.all(15),
          color: Colors.black12,
          child: const Text('Contoh Radio Disabled'),
        ),
        Row(
          children: const [
            Radio(
              value: 0,
              groupValue: 1,
              onChanged: null,
            ),
            Radio(
              value: 1,
              groupValue: 1,
              onChanged: null,
            ),
          ],
        )
      ]),
    );
  }
}

class RadioBasic extends StatefulWidget {
  const RadioBasic({Key? key}) : super(key: key);

  @override
  State<RadioBasic> createState() => _RadioBasicState();
}

class _RadioBasicState extends State<RadioBasic> {
  int _radioValue = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: 0,
          groupValue: _radioValue,
          onChanged: (int? val) {
            if (val != null) {
              setState(() {
                _radioValue = val;
              });
            }
          },
        ),
        Radio(
          value: 1,
          groupValue: _radioValue,
          onChanged: (int? val) {
            if (val != null) {
              setState(() {
                _radioValue = val;
              });
            }
          },
        )
      ],
    );
  }
}
