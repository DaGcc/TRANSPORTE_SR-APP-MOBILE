import 'package:app_tr_mobile/config/theme/app_theme.dart';
import 'package:app_tr_mobile/presentation/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title:  'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).theme(),
      home: const SafeArea(
        child: LoginScreen()
      )
    );
  }
}