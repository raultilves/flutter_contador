// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage>{
  int _contador = 0;
  final TextStyle estiloTexto = TextStyle(fontSize: 24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(
				title: Text('Contador antiestrés'),
				centerTitle: true,
				backgroundColor: Colors.cyan,
			),
			body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(flex: 1),
          Text("Número de clicks:", style: estiloTexto,),
          Text(_contador.toString(), style: estiloTexto,),   
          Expanded(
            child: Align(
                alignment: Alignment.bottomCenter,
                child: ButtonBar(
                  buttonPadding:EdgeInsets.all(20),
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          if (_contador > 0) {
                            _contador--;
                          }
                          
                        });
                      }, 
                      child: Text("-"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          _contador++;
                        });
                      }, 
                      child: Text("+"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          _contador = 0;
                        });
                      }, 
                      child: Text("0")
                    ),
                  ],
                )
              )
            )
        ]
      ),
    );
  }
}