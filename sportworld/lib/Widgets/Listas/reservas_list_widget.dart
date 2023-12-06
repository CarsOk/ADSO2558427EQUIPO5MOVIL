import 'package:flutter/material.dart';
import 'package:sportworld/Widgets/Datos/reserva_datos_widget.dart';
import 'package:sportworld/models/reserva.dart';

class ReservasList extends StatelessWidget {
  final List<Reserva> reservas;

  const ReservasList({ 
    Key? key,required this.reservas, 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: reservas.length,
      itemBuilder: (BuildContext context, index) {
        final reserva = reservas[index];
        return ListTile(
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
          title: Text('${reserva.id}', style: TextStyle(color: Colors.white)),
          subtitle: Text('Fecha: ${reserva.fecha}', style: TextStyle(color: Colors.white),),
          onTap: () =>(
            context,
            MaterialPageRoute(builder: (ctx) => ReservaDatos(reserva: reserva))
          ),
        );
      },
    );
  }
} 