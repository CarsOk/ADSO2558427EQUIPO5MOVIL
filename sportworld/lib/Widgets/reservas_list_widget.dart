import 'package:flutter/material.dart';
import 'package:sportworld/Services/reserva_service.dart';
import 'package:sportworld/models/reserva.dart';

class ReservasListWidget extends StatefulWidget {
  @override
  _ReservasListWidgetState createState() => _ReservasListWidgetState();
}

class _ReservasListWidgetState extends State<ReservasListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Reservas'),
      ),
      body: FutureBuilder(
        future: ReservaService.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<Reserva> reservas = snapshot.data as List<Reserva>;
            return ListView.builder(
              itemCount: reservas.length,
              itemBuilder: (context, index) {
                var reserva = reservas[index];
                return ListTile(
                  title: Text('Reserva ID: ${reserva.id}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Fecha: ${reserva.fecha.toString()}'),
                      Text('Hora Inicio: ${reserva.horaInicio.toString()}'),
                      Text('Hora Fin: ${reserva.horaFin.toString()}'),
                      Text('Cancha: ${reserva.cancha.nombre}'),
                      Text('Usuario: ${reserva.usuario.nombre} ${reserva.usuario.apellido}'),
                      Text('Precio: \$${reserva.precio.toStringAsFixed(2)}'),
                      Text('Duración en Horas: ${reserva.duracionEnHoras.toString()}'),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}