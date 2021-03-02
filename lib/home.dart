import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_learning/controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  final Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutetr MobX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(25),
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(labelText: "Name"),
                  onChanged: controller.setName,
                ),
                TextField(
                  decoration: InputDecoration(labelText: "Last name"),
                  onChanged: controller.setLastName,
                ),

              ],),
            ),
            Observer(//to obeserver state changes 
              builder: (_) {
                return Text(
                  'Your full name is\n${controller.fullName}',
                  style: Theme.of(context).textTheme.bodyText1,
                );
              },
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
