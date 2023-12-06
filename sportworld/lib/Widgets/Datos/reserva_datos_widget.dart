import 'package:flutter/material.dart';
import 'package:sportworld/models/reserva.dart';

class ReservaDatos extends StatelessWidget {
  final Reserva reserva;

  const ReservaDatos({
    Key? key,
    required this.reserva,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de la reserva'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Codigo de la reserva: ${reserva.id}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Identificacion del usuarios: ${reserva.usuarioId}'),
            SizedBox(height: 10),
            Text('Codigo de la cancha: ${reserva.canchaId}'),
            SizedBox(height: 10),
            Text('Fecha: ${reserva.fecha}'),
            SizedBox(height: 10),
            Text('Hora: ${reserva.horaInicio} - ${reserva.horaFin}'), // Puedes mostrar la imagen aquí
            SizedBox(height: 10),
            Text('Precio total: ${reserva.precio}'),
          ],
        ),
      ),
    );
  }
}