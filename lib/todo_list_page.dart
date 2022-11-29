import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  TodoListPageState createState() => TodoListPageState();
}

class TodoListPageState extends State<TodoListPage> {
  TextEditingController _textEditingController = TextEditingController();

  List<String> tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List App"),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
            ),
            Container(
              height: 400,
              child: ListView.builder(
                itemCount: tarefas.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(tarefas[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          if (_textEditingController.text.length > 0) {
            setState(() {
              tarefas.add(_textEditingController.text);
            });
            _textEditingController.clear();
          }

          print(tarefas);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
