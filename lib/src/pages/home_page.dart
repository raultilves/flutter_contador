// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
	
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
						Text("0", style: estiloTexto,)
					],
					mainAxisAlignment: MainAxisAlignment.center,
				) 
			),
			floatingActionButton: FloatingActionButton(
				child: Icon(Icons.add),
				onPressed: () {
					print("Holiwi");
				},
			),
			floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
		);
  	}
}