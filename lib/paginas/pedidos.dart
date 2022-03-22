import 'package:flutter/material.dart';

class Pedidos extends StatefulWidget {
  const Pedidos({ Key? key }) : super(key: key);

  @override
  State<Pedidos> createState() => _cartState();
}

class _cartState extends State<Pedidos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        Text('cart'),
        ),
        body: Center(
          child: Text('Bem-vindo ao seu carrinho!'),
        ),

    );
  }
}