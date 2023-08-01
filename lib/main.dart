import 'package:app01iti/login-page.dart';
import 'package:flutter/material.dart';

import 'Homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



  Future <void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

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