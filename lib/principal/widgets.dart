import 'package:flutter/material.dart';
import 'package:todoapp/paginas/home.dart';

class CardWidget extends StatelessWidget {
  final title; /*  variaveis de responsivas */
  final desc;   
 
  CardWidget({this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      /*   Caixa de legenda  */
      width: double.infinity, /* tamanho da caixa */ 
      padding: EdgeInsets.symmetric(  /* distância da caixa */ 
        vertical: 32.0,
        horizontal: 24.0,
      ),
      margin: EdgeInsets.only(
        top: 10.0,
        bottom: 10.0,
      ),
      decoration: BoxDecoration( /*  estilização da caixa de legenda  */
        color: Color(0xFFffffff), /* cor da caixa de legenda */ 
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(          /* alinhamento da caixa */
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              title ?? "(Estabelecimentos)",
              style: TextStyle(
                color: Color(0xFF868686), /* estilização do titulo */ 
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              desc ?? "(Sem descrição)",
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xFF868686),       /* cor da legenda */
                height: 1.5,
              ),
            ),
          )
        ],
      ),
    );
  }
}