import 'package:flutter/material.dart';
import 'package:sportworld/Widgets/pages/cancha_page.dart';
import 'package:sportworld/Widgets/estilos/home_page.dart';


final Map<String, WidgetBuilder> routes = {
   'home': (BuildContext context) => HomePage(),
   'canchas': (BuildContext context) => CanchaPage(),
   
};

