import 'package:flutter/material.dart';
import 'package:sportworld/models/cancha.dart';

class ReservaDatos extends StatelessWidget {
  final Cancha cancha;

  const ReservaDatos({
    Key? key,
    required this.cancha,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de la cancha'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nombre: ${cancha.nombre}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Correo Electrónico: ${cancha.precio}'),
            SizedBox(height: 10),
            Text('Identificación: ${cancha.id}'),
            SizedBox(height: 10),
            Text('Imagen: ${cancha.imagen}'), // Puedes mostrar la imagen aquí
          ],
        ),
      ),
    );
  }
}