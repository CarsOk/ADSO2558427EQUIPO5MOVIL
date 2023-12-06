import 'package:flutter/material.dart';
import 'package:sportworld/Widgets/pages/cancha_page.dart';
import 'package:sportworld/Widgets/pages/info_page.dart';
import 'package:sportworld/Widgets/pages/usuario_page.dart';

class PaginasNavigation extends StatefulWidget {
  @override
  State<PaginasNavigation> createState() => _PaginasNavigationState();
}

class _PaginasNavigationState extends State<PaginasNavigation> {
  int _paginaActual = 0;

  List<Widget> _paginas = [
    InfoPage(),
    UsuarioPage(),
    CanchaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _paginaActual = index;
          });
        },
        currentIndex: _paginaActual,
        backgroundColor: Colors.transparent,
        elevation: 20,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), label: "usuarios"),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer), label: "canchas"),
        ],
        selectedItemColor: Color(0xFF47B2E4),
        unselectedItemColor: Colors.white,
      ),
    );
  }
}