import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({ Key? key }) : super(key: key);

  @override
  State<Perfil> createState() => _settingsState();
}

class _settingsState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        Text('Configurações'),
        ),
        body: Center(
          child: Text('Bem-vindo as configurações!'),
        ),

    );
  }
}