import 'package:flutter/material.dart';
import 'package:sportworld/Widgets/error_page.dart';
import 'package:sportworld/home_page.dart';
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
          // Ajusta según tus necesidades
        ),
        textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.white, // Color del texto del título del AppBar
            ),
          ),
        iconTheme: IconThemeData(
            color: Colors.white, // Color del ícono de hamburguesa
          ),
      ),
     home: HomePage(),
     routes: routes,
     onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => ErrorPage(),
          );
      },
    );
  }
}