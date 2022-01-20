// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

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
				title: Text('Título'),
				centerTitle: true,
				backgroundColor: Colors.cyan,
			),
			body: Center(
				child: Column(
					children: [
						Text("Número de clicks:", style: estiloTexto,),
						Text(_contador.toString(), style: estiloTexto,)
					],
					mainAxisAlignment: MainAxisAlignment.center,
				)
			),
			floatingActionButton: FloatingActionButton(
				child: Icon(Icons.add),
				onPressed: () {
          setState(() {
            _contador++;
          });
				},
			),
			floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
		);
  }
  
}