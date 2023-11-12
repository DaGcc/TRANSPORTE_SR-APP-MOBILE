class TokenAuth {
  
    final String accessToken;
    final String tokenType;
    final String refreshToken;
    final int expiresIn;
    final String scope;
    final String infoAdicional;
    final int idUsuario;
    final DateTime fechaCreacion;
    final String email;
    final String jti;

    TokenAuth({
        required this.accessToken,
        required this.tokenType,
        required this.refreshToken,
        required this.expiresIn,
        required this.scope,
        required this.infoAdicional,
        required this.idUsuario,
        required this.fechaCreacion,
        required this.email,
        required this.jti,
    });

    factory TokenAuth.fromJson(Map<String, dynamic> json) => TokenAuth(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        refreshToken: json["refresh_token"],
        expiresIn: json["expires_in"],
        scope: json["scope"],
        infoAdicional: json["info_adicional"],
        idUsuario: json["id_usuario"],
        fechaCreacion: DateTime.parse(json["fecha_creacion"]),
        email: json["email"],
        jti: json["jti"],
    );

    Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "refresh_token": refreshToken,
        "expires_in": expiresIn,
        "scope": scope,
        "info_adicional": infoAdicional,
        "id_usuario": idUsuario,
        "fecha_creacion": fechaCreacion.toIso8601String(),
        "email": email,
        "jti": jti,
    };
}
