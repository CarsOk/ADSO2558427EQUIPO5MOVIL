class Cancha {
  final int id;
  final String nombre;
  final int jugadores;
  final double precio;
  final String distancia;
  final String imagen;

  Cancha({
    required this.id,
    required this.nombre,
    required this.jugadores,
    required this.precio,
    required this.distancia,
    required this.imagen,
  });

  factory Cancha.fromJson(Map<String, dynamic> json) {
    return Cancha(
      id: json['id'],
      nombre: json['nombre'] ?? '',
      jugadores: json['jugadores'],
      precio: json['precio'].toDouble(),
      distancia: json['distancia'] ?? '',
      imagen: json['imagen'] ?? '',
    );
  }
}