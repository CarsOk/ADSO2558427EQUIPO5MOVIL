import 'package:flutter/material.dart';
import 'package:sportworld/Services/Lista/comentarios_service.dart';
import 'package:sportworld/Widgets/Listas/comentarios_list.dart';
import 'package:sportworld/Widgets/estilos/error_page.dart';
import 'package:sportworld/Widgets/estilos/loading_page.dart';
import 'package:sportworld/models/comentario.dart';

class ComentarioPage extends StatelessWidget {
  const ComentarioPage({Key? key}) : super(key: key);

  Future<List<Comentario>> fetchData() async {
    // Lógica para obtener datos de ComentarioService
    // Supongamos que ComentarioService tiene un método llamado fetchData que retorna una lista de comentarios.
    return ComentariosService.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Comentarios', style: TextStyle(color: Colors.white)),
      ),
      body: FutureBuilder(
        builder: (context, AsyncSnapshot<List<Comentario>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Muestra un indicador de carga mientras se obtienen los datos.
            return LoadingPage();
          } else if (snapshot.hasError) {
            // Si hay un error, muestra la página de error.
            return ErrorPage();
          } else if (snapshot.hasData) {
            // En este punto, snapshot.data contiene la lista de comentarios.
            // Puedes pasarla a ComentariosListWidget.
            return ComentariosList(comentarios: snapshot.data as List<Comentario>);
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
