class Usuario {
  final String email;
  final String encryptedPassword;
  final String resetPasswordToken;
  final DateTime resetPasswordSentAt;
  final DateTime rememberCreatedAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool admin;
  final int identificacion;
  final String nombre;
  final String apellido;
  final String imagen;

  Usuario({
    required this.email,
    required this.encryptedPassword,
    required this.resetPasswordToken,
    required this.resetPasswordSentAt,
    required this.rememberCreatedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.admin,
    required this.identificacion,
    required this.nombre,
    required this.apellido,
    required this.imagen,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      email: json['email'] ?? '',
      encryptedPassword: json['encrypted_password'] ?? '',
      resetPasswordToken: json['reset_password_token'] ?? '',
      resetPasswordSentAt: json['reset_password_sent_at'] != null
          ? DateTime.parse(json['reset_password_sent_at'])
          : DateTime.now(),
      rememberCreatedAt: json['remember_created_at'] != null
          ? DateTime.parse(json['remember_created_at'])
          : DateTime.now(),
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      admin: json['admin'] ?? false,
      identificacion: json['identificacion'],
      nombre: json['nombre'] ?? '',
      apellido: json['apellido'] ?? '',
      imagen: json['imagen'] ?? '',
    );
  }
}