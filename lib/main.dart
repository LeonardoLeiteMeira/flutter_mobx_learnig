import 'package:flutter/material.dart';
import 'package:flutter_mobx_learning/controller/controller.dart';
import 'package:flutter_mobx_learning/view/main_menu.dart';
import 'package:get_it/get_it.dart';

import 'view/home.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton(Controller());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(),
        "/menu": (context) => MainMenu(),
      },
    );
  }
}
