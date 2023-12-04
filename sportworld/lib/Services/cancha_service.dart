import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sportworld/models/cancha.dart';

class CanchaService {
  static Future<List<Cancha>> fetchData() async {
    var url = Uri.parse('http://localhost:3000/api/canchas');

    var response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse.map((cancha) => Cancha.fromJson(cancha)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}