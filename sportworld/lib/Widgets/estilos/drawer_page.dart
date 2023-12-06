import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              //imagen o contenedor grande
              margin: const EdgeInsets.only(top: 50, bottom: 20),
            ),
            const Text(
              "Administrador",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              color: Colors.grey[100],
              child: const Text("Inicio"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              color: Colors.grey[100],
              child: const Text("Canchas"),
            ),
            Expanded(child: Container()),
            Container(
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              color: Colors.black87,
              alignment: Alignment.center,
              child: const Text(
                "Cerrar sesión",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}