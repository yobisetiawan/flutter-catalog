import 'package:flutter/material.dart';

class MyAlert extends StatelessWidget {
  const MyAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black12,
            child: const Text('Contoh Alert'),
          ),
          Center(
            child: TextButton(
              child: const Text('Test Alert'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: const Text('Test Alert'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Ok'),
                              child: const Text('Ok'),
                            )
                          ],
                        )).then(
                  (value) {
                    if (value != null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('$value'),
                        ),
                      );
                    }
                  },
                );
              },
            ),
          ),
          Center(
            child: TextButton(
              child: const Text('Test Confirm'),
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) => AlertDialog(
                          title: const Text('Apakah Anda Yakin?'),
                          content: const Text(
                              'Setelah data di hapus data tidak bisa di kembalikan'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Tidak'),
                              child: const Text('Tidak'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Ya'),
                              child: const Text('Ya'),
                            )
                          ],
                        )).then(
                  (value) {
                    if (value != null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('$value'),
                        ),
                      );
                    }
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
