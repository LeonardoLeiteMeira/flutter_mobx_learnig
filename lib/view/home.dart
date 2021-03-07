import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_learning/components/my_text_field.inline.dart';
import 'package:flutter_mobx_learning/controller/controller.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutetr MobX"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                "Form using mobx",
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ),
          Form(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                children: <Widget>[
                  myTextFieldInline("Name", controller.setName, null,
                      () => null, TextInputType.name),
                  myTextFieldInline("Last Name", controller.setLastName, null,
                      () => null, TextInputType.name),
                  Observer(
                      builder: (_) => myTextFieldInline(
                          "Email",
                          controller.setEmail,
                          null,
                          controller.validateEmail,
                          TextInputType.emailAddress)),
                ],
              ),
            ),
          ),
          Observer(builder: (_) {
            if (controller.isSending) {
              return CircularProgressIndicator();
            }
            return RaisedButton(
              child: Text("Login"),
              onPressed: ()async {
                if(await controller.submitForm()){
                  Navigator.pushNamed(context, '/menu');
                }
              },
            );
          }),
        ],
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
