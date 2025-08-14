import 'package:chatapp/pages/login_page.dart';
import 'package:flutter/material.dart';
//import 'package:chatapp/screens/login_page.dart';
import 'package:chatapp/pages/register_page.dart';

void main() {
  runApp(const Scholarchat());
}

class Scholarchat extends StatelessWidget {
  const Scholarchat({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:  
      {
        'LoginPage': (context) => const LoginPage(),
        'RegisterPage': (context) => const RegisterPage(),
      },
      initialRoute:   "LoginPage()",

      //home: RegisterPage(),
      //home: LoginPage(),
    );
  }
}
