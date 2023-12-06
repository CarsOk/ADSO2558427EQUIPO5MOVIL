import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sportworld/models/reserva.dart'; // Make sure to adjust the import path

class ReservaService {
  static Future<List<Reserva>> fetchData() async {
    var url = Uri.parse('https://api-sportworld37-b078035369c6.herokuapp.com//api/reservas');

    var response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse.map((reserva) => Reserva.fromJson(reserva)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}