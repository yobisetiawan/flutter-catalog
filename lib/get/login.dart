// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class MyLoginController extends GetxController {
  var emailInput = TextEditingController();
  var passInput = TextEditingController();

  var isLoading = false.obs;

  login() async {
    isLoading.value = true;

    var url = Uri.http('localhost:8000', '/api/v1/auth/login');

    try {
      print({'email': emailInput.text, 'password': passInput.text});
      var response = await http.post(url,
          headers: {"accept": "application/json"},
          body: {'email': emailInput.text, 'password': passInput.text});

      var body = convert.jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode == 200) {
        print(response.body);
      } else {
        print(body['message']);
      }
    } catch (e) {
      print(e.toString());
    }

    isLoading.value = false;
  }
}

class GetLoginTest extends StatelessWidget {
  const GetLoginTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(MyLoginController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Get: Login Test'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          TextField(
            controller: c.emailInput,
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
          ),
          TextField(
            controller: c.passInput,
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
          ),
          Obx(() => ElevatedButton(
                onPressed: c.isLoading.value ? null : c.login,
                child: c.isLoading.value
                    ? const SizedBox(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2.0,
                        ),
                        height: 20.0,
                        width: 20.0,
                      )
                    : const Text('Login'),
              ))
        ],
      ),
    );
  }
}
