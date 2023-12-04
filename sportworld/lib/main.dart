import 'package:flutter/material.dart';
import 'package:sportworld/Widgets/canchas_list_widget.dart';
import 'package:sportworld/Widgets/reservas_list_widget.dart';  
import 'package:sportworld/Widgets/usuarios_list_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sport World',
      home: CanchasListWidget(),
    );
  }
}
