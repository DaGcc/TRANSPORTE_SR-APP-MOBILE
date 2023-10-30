import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            _LoginHeaderView(),
            const Padding(
              padding:  EdgeInsets.symmetric(vertical: 40),
              child:  Divider(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    border:  OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                    label: Text("Email"),
                    hintText: "Ej. mia@mia.com"
                  ),
                ),
                const SizedBox(height: 25),
                TextFormField(
                  decoration: const InputDecoration(
                    border:  OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                    label: Text("Contraseña"),
                    hintText: "Ingresa tu contraseña"
                  ),
                ),
                const SizedBox(height: 25),
                
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    icon: const Icon(Icons.login), 
                    label: const Text("Ingresar"),
                    style: const ButtonStyle(
                      maximumSize:  MaterialStatePropertyAll(Size.infinite),
                      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 20))
                    ),
                    onPressed: (){}
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),

          ],
        ),
      ),
    );
  }
}

class _LoginHeaderView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox( height: 130 ),
        FlutterLogo( size: 100 ),
        SizedBox( height: 80 ),
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Accede", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
              Text("Ingresando tus datos de Conductor.", style:TextStyle(color: Colors.grey )),
            ],
          ),
        ),
      ]
    );
  }
}