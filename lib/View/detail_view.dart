import 'package:flutter/material.dart';
import 'package:pract_navegacion2/Model/tasks.dart';

class DetailScreen extends StatelessWidget{
  const DetailScreen({
      super.key, 
      required this.task
    });

    final Task task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task.title),
        backgroundColor:const Color.fromARGB(255, 182, 31, 247)
      ),
      body: Center(
        child: Text(task.description),
      )
    );
  }
}