import 'package:flutter/material.dart';
import 'package:sportworld/models/cancha.dart';

class CanchaDatos extends StatelessWidget {
  final Cancha cancha;

  const CanchaDatos({
    Key? key,
    required this.cancha,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de la cancha', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${cancha.imagen}', style: TextStyle(color: Colors.white)), // Puedes mostrar la imagen aquí
                SizedBox(height: 10),
                Text(
                  '${cancha.id} ${cancha.nombre}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 10),
                Text('Precio: ${cancha.precio}', style: TextStyle(color: Colors.white)),
                SizedBox(height: 10),
                Text('${cancha.jugadores}', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}