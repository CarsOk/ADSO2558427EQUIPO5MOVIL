import 'package:flutter/material.dart';
import 'package:sportworld/models/comentario.dart';

class ComentarioDatos extends StatelessWidget {
  final Comentario comentario;

  const ComentarioDatos({
    Key? key,
    required this.comentario,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del comentario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ID del comentario: ${comentario.id}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Contenido: ${comentario.contenido}'),
            SizedBox(height: 10),
            Text('Calificación: ${comentario.calificacion}'),
            SizedBox(height: 10),
            Text('Tipo: ${comentario.tipo}'),
            SizedBox(height: 10),
            Text('Usuario ID: ${comentario.usuarioId}'),
            SizedBox(height: 10),
            Text('Fecha de creación: ${comentario.createdAt.toLocal()}'),
            SizedBox(height: 10),
            Text('Fecha de actualización: ${comentario.updatedAt.toLocal()}'),
          ],
        ),
      ),
    );
  }
}
