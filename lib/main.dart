import 'package:app_camara/screens/camara_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Cuerpo()
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lectura imágenes"),),
      body: Container(
        alignment: Alignment(1, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton.filled(onPressed: ()=> 
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Images())), 
            icon: Icon(Icons.landscape_sharp)),
            IconButton.filled(onPressed: ()=>(), icon: Icon(Icons.camera))
          ],
        ),
      ),
    );
  }
}