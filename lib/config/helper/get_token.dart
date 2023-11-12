import 'package:app_tr_mobile/shared/token_auth.dart';
import 'package:dio/dio.dart';

class GetToken {

  final _dio = Dio();

  Future<TokenAuth> getToken(String email ,String password) async {
    try {
      // Configurar los encabezados
      Options options = Options(
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
          "Authorization": "Basic dHI6MTIzNDU=",
        },
      );

      // Crear los datos de formulario
      FormData formData = FormData.fromMap({
        "grant_type": "password",
        "username": email,
        "password": password,
      });

      // Realizar la solicitud POST con Dio
      final Response response = await _dio.post(
        'http://localhost:8080/oauth/token',
        data: formData,
        options: options,
      );
      // print('Succes: ${response.data}');
      // Obtener el token de la respuesta
      final tokenAuth  = TokenAuth.fromJson(response.data);
      return tokenAuth;
    } catch (error) {
      // print('Error: $error');
      rethrow; // Puedes manejar el error según tus necesidades
    }
  }

}