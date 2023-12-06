import 'package:flutter/material.dart';
import 'package:sportworld/models/usuario.dart';

class UsuarioDatos extends StatelessWidget {
  final Usuario usuario;

  const UsuarioDatos({
    Key? key,
    required this.usuario,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Usuario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nombre: ${usuario.nombre} ${usuario.apellido}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Correo Electrónico: ${usuario.email}'),
            SizedBox(height: 10),
            Text('Identificación: ${usuario.identificacion}'),
            SizedBox(height: 10),
            Text('Imagen: ${usuario.imagen}'), // Puedes mostrar la imagen aquí
          ],
        ),
      ),
    );
  }
}