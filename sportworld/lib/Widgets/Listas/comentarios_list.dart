import 'package:flutter/material.dart';
import 'package:sportworld/models/comentario.dart';
 // Ajusta la importación según tu estructura de carpetas

class ComentariosList extends StatelessWidget {
  final List<Comentario> comentarios; // Ajusta según tus necesidades

  const ComentariosList({ 
    Key? key,required this.comentarios, 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comentarios', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: comentarios.length,
        itemBuilder: (context, index) {
          final comentario = comentarios[index];
          return ListTile(
            title: Text(comentario.contenido, style: TextStyle(color: Colors.white)),
            subtitle: Text('Calificación: ${comentario.calificacion}', style: TextStyle(color: Colors.white)),
          );
        },
      ),
    );
  }
}
