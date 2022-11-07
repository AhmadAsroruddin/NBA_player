import 'package:flutter/material.dart';

import './landingPage.dart';
import './detailPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => LandingPage(),
        DetailPage.routeName: (ctx) => DetailPage(nama: "",image: "",posisi: "", isFavorite: false),
      },
    );
  }
}
