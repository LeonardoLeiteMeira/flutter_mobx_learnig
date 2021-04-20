import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_learning/controller/login_controller.dart';
import 'package:flutter_mobx_learning/models/components/my_text_field.inline.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final controller = GetIt.I.get<LoginController>();
  var disposerReactions = List<ReactionDisposer>.empty(growable: true);

  @override
  initState() {
    //create reactions
    var reactionFiling = reaction<bool>(
      (_) => controller.email.isNotEmpty || controller.fullName.isNotEmpty,
      (bool _isFilling) {
        print(_isFilling);
        controller.setIsFilling(_isFilling);
      },
    );

    disposerReactions.add(reactionFiling);

    super.initState();
  }

  @override
  dispose() {
    //dispose reactions
    disposerReactions.forEach((dispose) => dispose());

    super.dispose();
  }

  _loginError(String message) {
    _scaffoldKey.currentState!.showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Flutter MobX"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                "Simple Form using mobx",
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ),
          Form(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                children: <Widget>[
                  Observer(builder: (_) =>
                    myTextFieldInline("Name", controller.setName, null,
                        controller.validateName, TextInputType.name),
                  ),
                  Observer(builder: (_) =>
                    myTextFieldInline(
                      "Last Name",
                      controller.setLastName,
                      null,
                      controller.validateLastName,
                      TextInputType.name,
                    ),
                  ),
                  Observer(builder: (_) =>
                  myTextFieldInline(
                    "Email",
                    controller.setEmail,
                    null,
                    controller.validateEmail,
                    TextInputType.emailAddress,
                  ),
                  ),
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
                if (await controller.submitForm(controller.email)) {
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
