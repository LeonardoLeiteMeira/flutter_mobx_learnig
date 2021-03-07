import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_learning/controller/login_controller.dart';
import 'package:flutter_mobx_learning/models/components/my_text_field.inline.dart';
import 'package:get_it/get_it.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  _loginError(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<LoginController>();

    return Scaffold(
      key: _scaffoldKey,
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
              onPressed: () async {
                if (await controller.submitForm()) {
                  Navigator.pushNamed(context, '/menu');
                } else {
                  _loginError(controller.message);
                }
              },
            );
          }),
        ],
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
