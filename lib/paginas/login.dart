import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todoapp/paginas/home.dart';
import 'package:todoapp/principal/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( /* front - end login page */
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start, /* alinhamento */
          mainAxisSize: MainAxisSize.max, /* alinhamento */
          children: <Widget>[
            Expanded(
              flex: 1,
              child: 
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
              children:<Widget>[
                Text( /* logo */
                  ' Fomita',
                  style:TextStyle(
                    color:Color(0xFFE52727),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
            
           Expanded(
             flex: 4,
             child:
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text( /* legenda embaixo - logo */
              'Bem-vindo ao Fomita!',
              style:TextStyle(
                color: Color(0xFFE52727),
                fontSize: 22,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height:20,),
            Text( /* legenda login */
              'Já tem sua conta ? Faça seu login!',
            
              style: TextStyle(
                color:Color(0xFF606060) ,
              ),
            ),
            SizedBox(height:20,),
            TextFormField( /* Input e-mail */
              decoration: InputDecoration(
                hintText: 'E-mail',
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF606060),
                  fontStyle: FontStyle.italic,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF606060),
                  ),
                ),
              ),
            ),
            SizedBox(height:20,),
            TextFormField( /* Senha */
              decoration: InputDecoration(
                hintText: 'Senha',
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF606060),
                  fontStyle: FontStyle.italic,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color:Color(0xFF606060),
                  ), 
                ),              
              ),
            ),
          ],
         ),
        ),
            
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center, /* Botao de login */
                children: <Widget>[ 
                  FlatButton( 
                    onPressed: (){
                      setState(() {
                         Navigator.push(context,MaterialPageRoute(
                          builder: (context)=> Homepage()),
                          );
                      });
                    },
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Color.fromARGB(255, 228, 51, 51),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  ),
                  Text(
                    'Esqueceu a senha ?', /* Esqueceu a senha */
                    style: TextStyle(
                      color: Color.fromARGB(255, 228, 51, 51),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row( /* Registre-se  */
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Ainda não é cadastrado ?',
                      style: TextStyle(
                        color:Color(0xFF606060),
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                      ),
                      ),
                      Text(
                        ' Registre-se aqui!',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize:12,
                          color: Color.fromARGB(255, 228, 51, 51),
                        ),
                        ),
                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}