import 'package:app_tr_mobile/presentation/provider/token.provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _LoginView()),
    );
  }
}

class _LoginView extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of(context).colorScheme;
    final tokenProvider = context.watch<TokenProvider>(); 

    final textEmailController = TextEditingController();

    final passwordController = TextEditingController();


    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            _LoginHeaderView(),
            Padding(
              padding:  const EdgeInsets.symmetric(vertical: 40),
              child:  Divider( color: colors.primaryContainer),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                _InputEmail(controller: textEmailController),
                const SizedBox(height: 25),

                _InputPassword(controller:  passwordController),
                const SizedBox(height: 25),
                
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    icon: const Icon(Icons.login), 
                    label: const Text("Ingresar"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(colors.primary),
                      maximumSize: const MaterialStatePropertyAll(Size.infinite),
                      padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 20))
                    ),
                    onPressed: (){

                      String email = textEmailController.value.text;
                      String pass = passwordController.value.text;

                      tokenProvider.pedirToken(email,pass);
                      // Navigator.of(context).push("/task-lists");
                      context.go("/task-lists");
                    }
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

class _InputPassword extends StatelessWidget {
  
  TextEditingController controller;

  _InputPassword({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        border:  OutlineInputBorder(
          borderSide: BorderSide(width: 1),
        ),
        label: Text("Contraseña"),
        hintText: "Ingresa tu contraseña"
      ),
    );
  }
}

class _InputEmail extends StatelessWidget {

  TextEditingController controller;

  _InputEmail({ required this.controller });


  @override
  Widget build(BuildContext context) {

    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        border:  OutlineInputBorder(
          borderSide: BorderSide(width: 1),
        ),
        label: Text("Email"),
        hintText: "Ej. mia@mia.com"
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