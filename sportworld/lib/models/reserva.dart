import 'package:flutter/material.dart';
import 'package:sportworld/models/cancha.dart';
import 'package:sportworld/models/usuario.dart';

class Reserva {
  final int id;
  final DateTime fecha;
  final TimeOfDay horaInicio;
  final TimeOfDay horaFin;
  final Cancha cancha;
  final Usuario usuario;
  final DateTime createdAt;
  final DateTime updatedAt;
  final double precio;
  final double duracionEnHoras;

  Reserva({
    required this.id,
    required this.fecha,
    required this.horaInicio,
    required this.horaFin,
    required this.cancha,
    required this.usuario,
    required this.createdAt,
    required this.updatedAt,
    required this.precio,
    required this.duracionEnHoras,
  });

  factory Reserva.fromJson(Map<String, dynamic> json) {
    return Reserva(
      id: json['id'],
      fecha: DateTime.parse(json['fecha']),
      horaInicio: TimeOfDay.fromDateTime(DateTime.parse(json['hora_inicio'])),
      horaFin: TimeOfDay.fromDateTime(DateTime.parse(json['hora_fin'])),
      cancha: Cancha.fromJson(json['cancha']),
      usuario: Usuario.fromJson(json['usuario']),
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      precio: json['precio'].toDouble(),
      duracionEnHoras: json['duracion_en_horas'].toDouble(),
    );
  }
}