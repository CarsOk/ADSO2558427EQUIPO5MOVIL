import 'package:flutter/material.dart';
import 'package:sportworld/Widgets/pages/cancha_page.dart';
import 'package:sportworld/Widgets/pages/comentario_page.dart';
import 'package:sportworld/Widgets/pages/home_page.dart';
import 'package:sportworld/Widgets/pages/reserva_page.dart';
import 'package:sportworld/Widgets/pages/usuario_page.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: 150,
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset("assets/images/Logo-CS.png"),
                  const SizedBox(height: 10),  // Ajusta el espacio entre la imagen y el texto según tus preferencias
                  const Text(
                    "Administrador",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            GestureDetector(
                onTap: () {
                  // Coloca aquí la lógica de navegación para la página de Inicio
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),  // Cambia InicioPage por la página de inicio que desees
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.grey[100],
                  child: Row(
                    children: [
                      Icon(
                        Icons.home_filled,  // Cambia esto por el icono que desees
                        color: Colors.blue,  // Ajusta el color del ícono según tus preferencias
                        size: 20,  // Ajusta el tamaño del ícono según tus preferencias
                      ),
                      SizedBox(width: 10),  // Espaciado entre el ícono y el texto
                      Text(
                        "Inicio",
                        style: TextStyle(
                          fontSize: 14,  // Ajusta el tamaño del texto según tus preferencias
                          fontWeight: FontWeight.bold,  // Opcional: ajusta el peso del texto
                          color: Colors.black,  // Ajusta el color del texto según tus preferencias
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            GestureDetector(
                onTap: () {
                  // Coloca aquí la lógica de navegación para la página de Mi Perfil
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),  // Cambia MiPerfilPage por la página de perfil que desees
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 2),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.grey[100],
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,  // Cambia esto por el icono que desees
                        color: Colors.blue,  // Ajusta el color del ícono según tus preferencias
                        size: 20,  // Ajusta el tamaño del ícono según tus preferencias
                      ),
                      SizedBox(width: 10),  // Espaciado entre el ícono y el texto
                      Text(
                        "Mi perfil",
                        style: TextStyle(
                          fontSize: 14,  // Ajusta el tamaño del texto según tus preferencias
                          fontWeight: FontWeight.bold,  // Opcional: ajusta el peso del texto
                          color: Colors.black,  // Ajusta el color del texto según tus preferencias
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            GestureDetector(
            onTap: () {
              // Coloca aquí la lógica de navegación para la página de Canchas
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CanchaPage(),  // Cambia CanchasPage por la página de canchas que desees
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(
                    Icons.sports_soccer,  // Cambia esto por el icono que desees
                    color: Colors.blue,  // Ajusta el color del icono según tus preferencias
                    size: 20,  // Ajusta el tamaño del icono según tus preferencias
                  ),
                  SizedBox(width: 10),  // Espaciado entre el ícono y el texto
                  Text(
                    "Canchas",
                    style: TextStyle(
                      fontSize: 14,  // Ajusta el tamaño del texto según tus preferencias
                      fontWeight: FontWeight.bold,  // Opcional: ajusta el peso del texto
                      color: Colors.black,  // Ajusta el color del texto según tus preferencias
                    ),
                  ),
                ],
              ),
            ),
          ),

            GestureDetector(
              onTap: () {
                // Coloca aquí la lógica de navegación para la página de Reservas
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReservaPage(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.grey[100],
                child: Row(
                  children: [
                    Icon(
                      Icons.assignment_turned_in_outlined,  // Cambia esto por el icono que desees
                      color: Colors.blue,  // Ajusta el color del icono según tus preferencias
                      size: 20,  // Ajusta el tamaño del icono según tus preferencias
                    ),
                    SizedBox(width: 10),  // Espaciado entre el icono y el texto
                    Text(
                      "Reservas",
                      style: TextStyle(
                        fontSize: 14,  // Ajusta el tamaño del texto según tus preferencias
                        fontWeight: FontWeight.bold,  // Opcional: ajusta el peso del texto
                        color: Colors.black,  // Ajusta el color del texto según tus preferencias
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Coloca aquí la lógica de navegación para la página de Usuarios
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UsuarioPage(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.grey[100],
                child: Row(
                  children: [
                    Icon(
                      Icons.group_outlined,  // Cambia esto por el icono que desees
                      color: Colors.blue,  // Ajusta el color del icono según tus preferencias
                      size: 20,  // Ajusta el tamaño del icono según tus preferencias
                    ),
                    SizedBox(width: 10),  // Espaciado entre el icono y el texto
                    Text(
                      "Usuarios",
                      style: TextStyle(
                        fontSize: 14,  // Ajusta el tamaño del texto según tus preferencias
                        fontWeight: FontWeight.bold,  // Opcional: ajusta el peso del texto
                        color: Colors.black,  // Ajusta el color del texto según tus preferencias
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Coloca aquí la lógica de navegación
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ComentarioPage(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.grey[100],
                child: Row(
                  children: [
                    Icon(
                      Icons.wechat_outlined,  // Cambia esto por el icono que desees
                      color: Colors.blue,  // Ajusta el color del icono según tus preferencias
                      size: 20,  // Ajusta el tamaño del icono según tus preferencias
                    ),
                    SizedBox(width: 10),  // Espaciado entre el icono y el texto
                    Text(
                      "Comentarios",
                      style: TextStyle(
                        fontSize: 14,  // Ajusta el tamaño del texto según tus preferencias
                        fontWeight: FontWeight.bold,  // Opcional: ajusta el peso del texto
                        color: Colors.black,  // Ajusta el color del texto según tus preferencias
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: Container()),
            Container(
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              color: Colors.black,
              alignment: Alignment.center,
              child: Row(
                children: [
                  Icon(
                    Icons.logout_outlined,
                    color: Colors.white, 
                    size: 20, 
                  ),
                  SizedBox(width: 10), 
                  Text(
                    "Cerrar sesión",
                    style: TextStyle(
                          fontSize: 14,  // Ajusta el tamaño del texto según tus preferencias
                          fontWeight: FontWeight.bold,  // Opcional: ajusta el peso del texto
                          color: Colors.white,  // Ajusta el color del texto según tus preferencias
                        ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}