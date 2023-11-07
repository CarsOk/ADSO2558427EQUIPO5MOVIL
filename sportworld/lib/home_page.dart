import 'package:flutter/material.dart';
import 'package:sportworld/widgets/carga_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
      backgroundColor: Colors.black,
      title: const Text(
          'Sport World', 
          style: TextStyle(color: Colors.white),
        ),
       leading: IconButton(
            icon: Image.asset('assets/yo.png'), // Agrega la ruta de tu imagen
            onPressed: () {
              // Acción al presionar la imagen
            },
          ),
      ),
      body:  CargaPage(),
    );
  }
}