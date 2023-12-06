import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sportworld/models/usuario.dart';

class UsuarioService {
  static Future<List<Usuario>> fetchData() async {
    var url = Uri.parse('https://api-sportworld37-b078035369c6.herokuapp.com//api/usuarios');
    
    var response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse.map((usuario) => Usuario.fromJson(usuario)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}