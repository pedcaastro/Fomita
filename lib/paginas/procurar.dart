import 'package:flutter/material.dart';

class procurar  extends StatefulWidget {
  const procurar ({ Key? key }) : super(key: key);

  @override
  State<procurar> createState() => _profileState();
}

class _profileState extends State<procurar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              body: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: TextField(
                        onChanged: (text) {

                        },
                        decoration: InputDecoration(
                            labelText: "Buscar um rango",
                            hintText: "Informe o nome do rango... ",
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.0),
                         ),
                      ),
                      ),
                      ),
                    ),
                  ],),
    ),
  );
}
}