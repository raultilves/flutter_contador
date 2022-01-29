// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/contador_page.dart';

class HomePage extends StatelessWidget {
	
	final TextStyle estiloTexto = TextStyle(fontSize: 24);

  	@override
  	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Contador antiestrés'),
				centerTitle: true,
				backgroundColor: Colors.cyan,
			),
			body: Center(
        child: Column(
          children: [
            Text("¡Bienvenido!, pulsa el botón cuando estes listo :)", textAlign: TextAlign.center, style: estiloTexto),
            Padding(padding: EdgeInsets.all(20)),
            Text("Recuerda que a veces es necesario parar a tomarte un descanso", textAlign: TextAlign.center, style: estiloTexto),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )
			),
			floatingActionButton: FloatingActionButton(
				child: Icon(Icons.play_arrow),
				onPressed: () {
					Navigator.push(context, MaterialPageRoute(builder: (context) => ContadorPage()));
				},
			),
			floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
		);
  	}
}