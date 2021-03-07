import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Menu Page"),),
      body: Container(child: Center(child: Text("Main menu"),),),
    );
  }
}
