import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Student {
  String name;
  Student(this.name);
}

class MyLocalCrudController extends GetxController {
  var list = <Student>[].obs;

  addItem(val) {
    list.add(Student(val));
  }

  updateItem(index, val) {
    list[index] = Student(val);
  }

  deleteItem(index) {
    list.removeAt(index);
  }
}

class GetLocalCrud extends StatelessWidget {
  const GetLocalCrud({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(MyLocalCrudController());

    Widget _buildItem(int idx) {
      return ListTile(
        title: Text(c.list[idx].name),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () => c.deleteItem(idx),
        ),
        onTap: () => c.updateItem(idx, 'lulu'),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Get: Local Crud'),
      ),
      body: Obx(() => ListView.builder(
            itemCount: c.list.length * 2,
            itemBuilder: (BuildContext context, int i) {
              if (i.isOdd) {
                return const Divider(
                  height: 0,
                );
              }

              final index = i ~/ 2;
              return _buildItem(index);
            },
          )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add), onPressed: () => c.addItem('Yobi')),
    );
  }
}
