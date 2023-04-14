import 'package:flutter/material.dart';
import 'package:gezdim_gordum/gezi_listesi.dart';
import 'package:gezdim_gordum/login_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false, // hata ayıklama basligi
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
      routes: {
        '/loginPage': (context) => GeziListesi(),
      },
    );
  }
}
