import 'package:flutter/material.dart';
import 'package:sportworld/models/usuario.dart';
import 'package:sportworld/Widgets/Datos/usuario_datos_widget.dart';

class UsuariosList extends StatelessWidget{
    final List<Usuario> usuarios;
  const UsuariosList({
    Key? key,required this.usuarios,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
     return ListView.builder(
              itemCount: usuarios.length,
              itemBuilder: (context, index) {
                final usuario = usuarios[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${usuario.nombre.substring(0,1)}'),
                  ),
                  trailing: const Icon(Icons.arrow_forward, color: Colors.white),
                  title: Text('${usuario.nombre} ${usuario.apellido}', style: TextStyle(color: Colors.white),),
                  subtitle: Text('Email: ${usuario.email}', style: TextStyle(color: Colors.white),),
                  onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => UsuarioDatos(usuario: usuario),
                  ),
                ),
                );
              },
            );
          }
        }