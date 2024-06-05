import 'package:flutter/material.dart';
import 'Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      // primarySwatch: Colors.blue,
       home:Login(title: '',),
     
      //  routes: {
      //   '/login': (context) =>  Login();
      //   '/Login_Page': (context) => MyApp(),
      //  },
      
     
    );
  }
}

