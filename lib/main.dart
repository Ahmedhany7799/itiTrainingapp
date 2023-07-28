import 'package:app01iti/login-page.dart';
import 'package:flutter/material.dart';

import 'Homepage.dart';

Future<void> main() async {

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        'Login_page': (context) => loginPage(),
        //'Register': (context) => homepage(),
      },
      initialRoute: 'Login_page',
      debugShowCheckedModeBanner: false,
    );
  }


}