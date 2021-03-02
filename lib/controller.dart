import 'package:mobx/mobx.dart';

class Controller {
  var _counter = Observable(0); //init state
  Action increment; //action to update state

  int get counter => _counter.value; //get observable value
  set counter(int newValue) =>
      _counter.value = newValue; //set observable value;

  Controller() {
    increment = Action(_increment); //init action

    autorun((_) {
      //auto run to listen updates
      print("Counter value $counter");
    });
  }

  _increment() {
    counter++;
  }
}
