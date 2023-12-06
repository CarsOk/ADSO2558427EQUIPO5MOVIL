class Comentario {
  final int id;
  final String contenido;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int calificacion;
  final String tipo;
  final int usuarioId;

  Comentario({
    required this.id,
    required this.contenido,
    required this.createdAt,
    required this.updatedAt,
    required this.calificacion,
    required this.tipo,
    required this.usuarioId,
  });

  factory Comentario.fromJson(Map<String, dynamic> json) {
    return Comentario(
      id: json['id'],
      contenido: json['contenido'] ?? '',
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      calificacion: json['calificacion'],
      tipo: json['tipo'] ?? '',
      usuarioId: json['usuario_id'],
    );
  }
}
