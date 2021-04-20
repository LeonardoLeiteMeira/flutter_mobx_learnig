import 'package:flutter/material.dart';
import 'package:flutter_mobx_learning/controller/login_controller.dart';
import 'package:flutter_mobx_learning/services/LoginRepository.dart';
import 'package:flutter_mobx_learning/services/dependencyInjection/config.dart';
import 'package:flutter_mobx_learning/view/main_menu.dart';
import 'package:get_it/get_it.dart';
import 'controller/list_controller.dart';
import 'view/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

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
