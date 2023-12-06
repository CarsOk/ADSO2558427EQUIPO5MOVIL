import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sportworld/models/comentario.dart';

class ComentarioService {
  static Future<List<Comentario>> fetchData() async {
    var url = Uri.parse('https://api-sportworld37-b078035369c6.herokuapp.com/api/comentarios');

    var response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse.map((comentario) => Comentario.fromJson(comentario)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}