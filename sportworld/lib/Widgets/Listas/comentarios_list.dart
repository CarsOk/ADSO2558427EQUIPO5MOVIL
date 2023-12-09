import 'package:flutter/material.dart';
import 'package:sportworld/Widgets/Datos/comentario_datos_widget.dart';
import 'package:sportworld/models/comentario.dart';

class ComentariosList extends StatelessWidget {
  final List<Comentario> comentarios; 

  const ComentariosList({ 
    Key? key,required this.comentarios, 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comentarios', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: comentarios.length,
        itemBuilder: (context, index) {
          final comentario = comentarios[index];
          return ListTile(
            trailing: const Icon(Icons.arrow_forward, color: Colors.white),
            title: Text(comentario.tipo, style: TextStyle(color: Colors.white)),
            subtitle: Text('Calificación: ${comentario.calificacion}', style: TextStyle(color: Colors.white)),
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => ComentarioDatos(comentario: comentario),
                  ),
                ),
          ); 
        },
      ),
    );
  }
}
