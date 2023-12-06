import 'package:flutter/material.dart';
import 'package:sportworld/Widgets/estilos/drawer_page.dart';
import 'package:sportworld/Widgets/pages/cancha_page.dart';

class HomePage extends StatefulWidget {
   HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _paginaActual = 0;

  List<Widget> _paginas = [
    HomePage(),
    CanchaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
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
      body: HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _paginaActual= index;
          });
        },
        currentIndex: _paginaActual,
        backgroundColor: Colors.transparent,
        elevation: 20,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), label: "usuarios"),
          BottomNavigationBarItem(icon: Icon(Icons.sports_soccer), label: "canchas"),
        ],
        selectedItemColor: Color(0xFF47B2E4),
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
