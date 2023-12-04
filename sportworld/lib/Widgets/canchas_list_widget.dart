import 'package:flutter/material.dart';
import 'package:sportworld/Services/cancha_service.dart';
import 'package:sportworld/models/cancha.dart';

class CanchasListWidget extends StatefulWidget {
  @override
  _CanchasListWidgetState createState() => _CanchasListWidgetState();
}

class _CanchasListWidgetState extends State<CanchasListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Canchas'),
      ),
      body: FutureBuilder(
        future: CanchaService.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<Cancha> canchas = snapshot.data as List<Cancha>;
            return ListView.builder(
              itemCount: canchas.length,
              itemBuilder: (context, index) {
                var cancha = canchas[index];
                return ListTile(
                  title: Text(cancha.nombre),
                  subtitle: Text('Jugadores: ${cancha.jugadores}, Precio: \$${cancha.precio.toStringAsFixed(2)}, Distancia: ${cancha.distancia}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
