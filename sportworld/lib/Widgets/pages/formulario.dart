import 'package:flutter/material.dart';
import 'home_page.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final GlobalKey<FormState> _formularioEstado = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "INICIO DE SESIÓN",
                  style: TextStyle(fontSize: 35),
                ),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.white, // Fondo blanco
                  child: Image.asset(
                    'assets/images/Logo-CS.png', // Ruta de tu imagen de logo
                    height: 200, // Ajusta la altura según tu necesidad
                  ),
                ),
                Form(
                  key: _formularioEstado,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value != "admin@gmail.com") {
                              return "El correo no es válido";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            hintText: "Correo electrónico",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value != "123456") {
                              return "Contraseña incorrecta";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            hintText: "Contraseña",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          if (_formularioEstado.currentState!.validate()) {
                            print("Todo bien, navegando a la página de inicio.");
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HomePage()),
                            );
                          } else {
                            print("Hay errores");
                          }
                        },
                        child: const Text("    Enviar    "),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
