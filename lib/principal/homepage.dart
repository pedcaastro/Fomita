import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/paginas/pedidos.dart';
import 'package:todoapp/principal/widgets.dart';
import 'package:todoapp/paginas/home.dart';
import 'package:todoapp/paginas/procurar.dart';

import 'package:todoapp/paginas/perfil.dart';



class Homepage extends StatefulWidget {


  const Homepage({Key? key}) : super(key: key);
 
  
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  int currentTab = 0;
  final List<Widget> screens = [
    home(),
    Pedidos(),
    procurar(),
    Perfil(),
   ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = home();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Fomita'),
        backgroundColor: Color(0xffE52727),
      ),
      
     
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment:  MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row( /* barra de navegacao */
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                         Navigator.push(context,MaterialPageRoute(
                          builder: (context)=> home()),);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0  ? Color(0xFFE52727):Color(0xFF868686),
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: currentTab == 0 ? Color(0xFFE52727) : Color(0xFF868686)
                          ),
                        ),

                      ],
                    ),
                  ),
                   MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                         Navigator.push(context,MaterialPageRoute(
                          builder: (context)=> procurar()),);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: currentTab == 1  ? Color(0xFFE52727):Color(0xFF868686),
                        ),
                        Text(
                          'Buscar',
                          style: TextStyle(
                            color: currentTab == 1 ? Color(0xFFE52727) : Color(0xFF868686)
                          ),
                        ),

                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                         Navigator.push(context,MaterialPageRoute(
                          builder: (context)=> Pedidos()),);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.comment,
                          color: currentTab == 2  ? Color(0xFFE52727):Color(0xFF868686),
                        ),
                        Text(
                          'Pedidos',
                          style: TextStyle(
                            color: currentTab == 2 ? Color(0xFFE52727) : Color(0xFF868686)
                          ),
                        ),

                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context)=> Perfil()),);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentTab == 3  ? Color(0xFFE52727):Color(0xFF868686),
                        ),
                        Text(
                          'Perfil',
                          style: TextStyle(
                            color: currentTab == 3 ? Color(0xFFE52727) : Color(0xFF868686),
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
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