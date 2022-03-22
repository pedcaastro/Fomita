import 'package:flutter/material.dart';

class Tarefas extends StatefulWidget {
  const Tarefas({ Key? key }) : super(key: key);

  @override
  State<Tarefas> createState() => _TarefasState();
}

class _TarefasState extends State<Tarefas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}