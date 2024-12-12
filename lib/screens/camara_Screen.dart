import 'dart:io';

import 'package:flutter/material.dart';

//IMAGE PICKER
import 'package:image_picker/image_picker.dart';

class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {

  XFile? foto;
  void actualizarImagen( XFile? nuevaFoto ){
    setState(() {
      foto=  nuevaFoto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Imágenes"),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: ()=>abrirGaleria( actualizarImagen ), child: Text("Abrir Galeria")),
            OutlinedButton(onPressed:()=> abrirCamara( actualizarImagen), child: Text("Abri cámara")),
        
            SizedBox(height: 50,),
            
            foto == null ? Text("no hay foto"): Expanded(child: 
              Image.file(File(foto!.path ), width: 200, height: 200,)
            )
        
        
          ],
        ),
      ),
    );
  }
}


Future<void> abrirGaleria( actualizarImagen ) async {
  final image = await ImagePicker().pickImage(source: ImageSource.gallery);
  if ( image != null ){
    actualizarImagen( image);
  }
}

Future<void> abrirCamara( actualizarImagen) async {
  final image = await ImagePicker().pickImage(source: ImageSource.camera);
  if( image != null){
    actualizarImagen( image );
  }
}