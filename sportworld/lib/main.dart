import 'package:flutter/material.dart';
import 'package:sportworld/Widgets/estilos/error_page.dart';
import 'package:sportworld/Widgets/estilos/home_page.dart';
import 'package:sportworld/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sport World',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.black,
          cardColor: Colors.black,
        ),
      ),
      home: HomePage(),
    );
  }
}