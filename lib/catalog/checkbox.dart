import 'package:flutter/material.dart';

class MyCheckBox extends StatelessWidget {
  const MyCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Checkbox'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Checkbox'),
          ),
          const ChecboxTest(),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Disabled'),
          ),
          const Checkbox(
            value: true,
            onChanged: null,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Checkbox Circle'),
          ),
          const ChecboxTestCircle(),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Checkbox Custom Style'),
          ),
          const ChecboxTestCs()
        ]));
  }
}

class ChecboxTest extends StatefulWidget {
  const ChecboxTest({Key? key}) : super(key: key);

  @override
  State<ChecboxTest> createState() => _ChecboxTestState();
}

class _ChecboxTestState extends State<ChecboxTest> {
  bool? _isActive = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _isActive,
      onChanged: (bool? val) {
        setState(() {
          _isActive = val;
        });
      },
    );
  }
}

class ChecboxTestCircle extends StatefulWidget {
  const ChecboxTestCircle({Key? key}) : super(key: key);

  @override
  State<ChecboxTestCircle> createState() => _ChecboxTestCircle();
}

class _ChecboxTestCircle extends State<ChecboxTestCircle> {
  bool? _isActive = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _isActive,
      shape: const CircleBorder(),
      onChanged: (bool? val) {
        setState(() {
          _isActive = val;
        });
      },
    );
  }
}

class ChecboxTestCs extends StatefulWidget {
  const ChecboxTestCs({Key? key}) : super(key: key);

  @override
  State<ChecboxTestCs> createState() => _ChecboxTestCs();
}

class _ChecboxTestCs extends State<ChecboxTestCs> {
  bool? _isActive = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 2,
      child: Checkbox(
        value: _isActive,
        checkColor: Colors.red,
        activeColor: Colors.amberAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onChanged: (bool? val) {
          setState(() {
            _isActive = val;
          });
        },
      ),
    );
  }
}
