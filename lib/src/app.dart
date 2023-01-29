import 'package:counter/src/pages/contador_page.dart';
// import 'package:counter/src/pages/home_page.dart';5

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  //metodo build
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Center(
        // child: HomePage(),
        child: ContadorPage(),
      ),
      theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255))
    );
  }
}
