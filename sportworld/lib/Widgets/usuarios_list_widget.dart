import 'package:flutter/material.dart';
import 'package:sportworld/Services/usuario_service.dart';
import 'package:sportworld/models/usuario.dart';

class UsuariosListWidget extends StatefulWidget {
  @override
  _UsuariosListWidgetState createState() => _UsuariosListWidgetState();
}

class _UsuariosListWidgetState extends State<UsuariosListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuarios'),
      ),
      body: FutureBuilder(
        future: UsuarioService.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<Usuario> usuarios = snapshot.data as List<Usuario>;
            return ListView.builder(
              itemCount: usuarios.length,
              itemBuilder: (context, index) {
                var usuario = usuarios[index];
                return ListTile(
                  title: Text('${usuario.nombre} ${usuario.apellido}'),
                  subtitle: Text('Email: ${usuario.email}, Identificación: ${usuario.identificacion}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}