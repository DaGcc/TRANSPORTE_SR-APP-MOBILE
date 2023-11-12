import 'package:app_tr_mobile/config/theme/app_theme.dart';
import 'package:app_tr_mobile/presentation/provider/token.provider.dart';
// import 'package:app_tr_mobile/presentation/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'config/router/router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers : [
        ChangeNotifierProvider(create: (_) => TokenProvider()),
      ],
      child: MaterialApp.router(
        
        title:  'Material App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 0).theme(),
        // home: const SafeArea(
        //   child: LoginScreen()
        // )
        routerConfig: router,
      ),
    );
  }
}