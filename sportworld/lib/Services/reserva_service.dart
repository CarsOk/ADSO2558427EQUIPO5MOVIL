import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sportworld/models/reserva.dart'; // Make sure to adjust the import path

class ReservaService {
  static Future<List<Reserva>> fetchData() async {
    var url = Uri.parse('http://localhost:3000/api/reservas'); // Replace with your actual API endpoint

    var response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse.map((reserva) => Reserva.fromJson(reserva)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}