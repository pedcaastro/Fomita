import 'package:flutter/material.dart';
import 'package:todoapp/principal/widgets.dart';
import 'package:todoapp/main.dart';

class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);
  

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE52727),
        title: Text(
          'Home',
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            
            horizontal: 24.0,
            
          ),
          
          color: Color(0xFFD4D4D4), /* background color*/
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Expanded(
                 child: ListView(
                    children: [ CardWidget(
                    title: "Fomita",
                    desc: "(Produtos)",
                  ),
                  CardWidget(),
                  CardWidget(),
                  CardWidget(),
                  CardWidget(),
                  CardWidget(),
                  CardWidget(),
                    ],
                    ),
               ),
               
              ]),
            ],
          ),
        ),
      ),
    );
  
  }
}