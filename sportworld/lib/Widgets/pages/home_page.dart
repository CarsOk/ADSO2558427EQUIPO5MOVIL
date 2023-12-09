import 'package:flutter/material.dart';
import 'package:sportworld/Widgets/estilos/drawer_page.dart';
import 'package:sportworld/Widgets/estilos/paginas_navigation.dart';

class HomePage extends StatelessWidget {
   const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('SPORTWORLD', style: TextStyle(color: Colors.white)),
         iconTheme: IconThemeData(color: Colors.white),
         actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Agrega la lógica para manejar el clic en el ícono de búsqueda
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Agrega la lógica para manejar el clic en el ícono de búsqueda
            },
          ),
        ],
      ),
      drawer: DrawerPage(),
      body: PaginasNavigation(), 
    );
  }
}
