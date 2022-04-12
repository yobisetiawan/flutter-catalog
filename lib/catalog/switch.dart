import 'package:flutter/material.dart';

class MySwitch extends StatelessWidget {
  const MySwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Switch'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh MySwitch'),
          ),
          const MySwitchTest(),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Disabled'),
          ),
          const Switch(
            value: true,
            onChanged: null,
          ),
        ]));
  }
}

class MySwitchTest extends StatefulWidget {
  const MySwitchTest({Key? key}) : super(key: key);

  @override
  State<MySwitchTest> createState() => _MySwitchTestState();
}

class _MySwitchTestState extends State<MySwitchTest> {
  bool _isActive = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isActive,
      onChanged: (bool val) {
        setState(() {
          _isActive = val;
        });
      },
    );
  }
}
