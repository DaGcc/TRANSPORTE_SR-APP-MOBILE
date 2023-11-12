import 'package:app_tr_mobile/config/helper/get_token.dart';
import 'package:flutter/material.dart';

class TokenProvider extends ChangeNotifier {

  final GetToken getToken = GetToken();

  String token = '';


  Future<void> pedirToken(String email ,String password) async{

    final r = await getToken.getToken( email , password);
    token = r.accessToken;

    notifyListeners();
  }

}