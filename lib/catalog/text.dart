import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle headline6 = Theme.of(context).textTheme.headline6!;
    final TextStyle headline5 = Theme.of(context).textTheme.headline5!;
    final TextStyle headline4 = Theme.of(context).textTheme.headline4!;
    final TextStyle headline3 = Theme.of(context).textTheme.headline3!;
    final TextStyle headline2 = Theme.of(context).textTheme.headline2!;
    final TextStyle headline1 = Theme.of(context).textTheme.headline1!;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Text'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Contoh Text'),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Paragraph'),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text(
                "Contoh Paragraph dengan new line, \n\nLorem Ipsum iis simply dummy text of the printing and typesetting industry. \n\nLorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Text Dociration'),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text(
              'Bold',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Italic',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              )),
          Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Underline ',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              )),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Google Font'),
          ),
          Container(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Contoh Google Font:oswald',
                style: GoogleFonts.oswald(textStyle: headline4),
              )),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Typography'),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Text('H1', style: headline1),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Text('H2', style: headline2),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Text('H3', style: headline3),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Text('H4', style: headline4),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Text('H5', style: headline5),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Text('H6', style: headline6),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Normal Text'),
          ),
        ]));
  }
}
