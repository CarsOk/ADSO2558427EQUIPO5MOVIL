import 'package:flutter/material.dart';
import 'package:sportworld/Services/cancha_service.dart';
import 'package:sportworld/Widgets/Listas/canchas_list_widget.dart';
import 'package:sportworld/Widgets/error_page.dart';
import 'package:sportworld/Widgets/loading_page.dart';
import 'package:sportworld/models/cancha.dart';

class CanchaPage extends StatelessWidget {
  const CanchaPage({
    Key? key,
  }) : super(key: key);

  Future<List<Cancha>> fetchData() async {
    // Lógica para obtener datos de UsuarioService
    // Supongamos que UsuarioService tiene un método llamado fetchData que retorna una lista de usuarios.
    return CanchaService.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Detalles del Usuario', style: TextStyle(color: Colors.white),),
      ),
      body: FutureBuilder(
        builder: (context, AsyncSnapshot<List<Cancha>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return ErrorPage();
            } else if (snapshot.hasData) {
              // En este punto, snapshot.data contiene la lista de usuarios.
              // Puedes pasarla a UsuariosListWidget.
              return CanchasList(canchas: snapshot.data as List<Cancha>);
            }
          }
          return LoadingPage();
        },
        future: fetchData(),
      ),
    );
  }
}