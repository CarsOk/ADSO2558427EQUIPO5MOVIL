import 'package:flutter/material.dart';
import 'package:sportworld/Widgets/Datos/cancha_datos_widget.dart';
import 'package:sportworld/models/cancha.dart';

class CanchasList extends StatelessWidget {
  final List<Cancha> canchas;
  const CanchasList({
    Key? key,required this.canchas,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
            return ListView.builder(
              itemCount: canchas.length,
              itemBuilder: (context, index) {
                final cancha = canchas[index];
                return ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                  title: Text('${cancha.nombre}', style: TextStyle(color: Colors.white),),
                  subtitle: Text(' Precio: \$${cancha.precio}', style: TextStyle(color: Colors.white),),
                  onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => CanchaDatos(cancha: cancha),
                  ),
                ),
                );
              },
            );
          }
        }