import 'package:flutter/material.dart';
import 'package:pract_navegacion2/Model/tasks.dart';
import 'package:pract_navegacion2/View/detail_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ToDoListScreen(tasks: lista),
    );
  }
}

class ToDoListScreen extends StatelessWidget{
  const ToDoListScreen ({super.key, required this.tasks});

  final List <Task> tasks;

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do List'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ), 
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index].title),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => DetailScreen
                (task: tasks[index])));
            },
          );
        },

      ),
    );
  }
}

