class Cancha {
  final int id;
  final String nombre;
  final int jugadores;
  final double precio;
  final String distancia;

  Cancha({
    required this.id,
    required this.nombre,
    required this.jugadores,
    required this.precio,
    required this.distancia,
  });

  factory Cancha.fromJson(Map<String, dynamic> json) {
    return Cancha(
      id: json['id'],
      nombre: json['nombre'] ?? '',
      jugadores: json['jugadores'],
      precio: json['precio'].toDouble(),
      distancia: json['distancia'] ?? '',
    );
  }
}