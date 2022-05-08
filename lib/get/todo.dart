import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Todo {
  String title;
  Todo(this.title);
}

class MyTodoCrudController extends GetxController {
  var list = <Todo>[].obs;

  var titleInput = TextEditingController();

  addItem() {
    list.add(Todo(titleInput.text));
  }

  updateItem(index) {
    list[index] = Todo(titleInput.text);
  }

  deleteItem(index) {
    list.removeAt(index);
  }
}

class GetTodoCrud extends StatelessWidget {
  const GetTodoCrud({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(MyTodoCrudController());

    showModal([String action = 'add', idx = 0]) {
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: const Text('Todo '),
                content: TextField(
                  controller: c.titleInput,
                   
                  decoration: const InputDecoration(
                    hintText: 'Title',
                    labelText: 'Title',
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, action),
                    child: const Text('Save'),
                  )
                ],
              )).then(
        (value) {
          if (value == 'add') {
            c.addItem();
          }
          if (value == 'edit') {
            c.updateItem(idx);
          }
        },
      );
    }

    Widget _buildItem(int idx) {
      return ListTile(
        title: Text(c.list[idx].title),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () => c.deleteItem(idx),
        ),
        onTap: () {
          c.titleInput.text = c.list[idx].title;
          showModal('edit', idx);
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Get: Local Todo CRUD'),
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
        child: const Icon(Icons.add),
        onPressed: () {
          c.titleInput.text = "";
          showModal();
        },
      ),
    );
  }
}
