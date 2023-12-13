import 'package:flutter/material.dart';
import 'package:sportworld/Services/Lista/reservas_service.dart';
import 'package:sportworld/Widgets/Listas/reservas_list_widget.dart';
import 'package:sportworld/Widgets/estilos/error_page.dart';
import 'package:sportworld/Widgets/estilos/loading_page.dart';
import 'package:sportworld/models/reserva.dart';

class ReservaPage extends StatelessWidget {
  const ReservaPage({Key? key}) : super(key: key);

  Future<List<Reserva>> fetchData() async {
    // Lógica para obtener datos de CanchaService
    // Supongamos que CanchaService tiene un método llamado fetchData que retorna una lista de canchas.
    return ReservasService.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Reservas', style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: FutureBuilder(
        builder: (context, AsyncSnapshot<List<Reserva>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Muestra un indicador de carga mientras se obtienen los datos.
            return LoadingPage();
          } else if (snapshot.hasError) {
            // Si hay un error, muestra la página de error.
            return ErrorPage();
          } else if (snapshot.hasData) {
            // En este punto, snapshot.data contiene la lista de canchas.
            // Puedes pasarla a CanchasListWidget.
            return ReservasList(reservas: snapshot.data as List<Reserva>);
          } else {
            // Maneja otros casos si es necesario.
            return Container(); // Puedes personalizar esto según tus necesidades.
          }
        },
        future: fetchData(),
      ),
    );
  }
}