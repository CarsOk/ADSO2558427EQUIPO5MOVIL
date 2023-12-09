import 'package:flutter/material.dart';
import 'package:sportworld/Widgets/estilos/home_page.dart';
import 'package:sportworld/Widgets/estilos/splash_screen.dart';
import 'package:sportworld/Widgets/pages/formulario.dart';


final Map<String, WidgetBuilder> routes = {
   'splash': (BuildContext context) => SplashScreen(),
   '/': (BuildContext context) => Formulario(),
   'home': (BuildContext context) => HomePage(),  
};

