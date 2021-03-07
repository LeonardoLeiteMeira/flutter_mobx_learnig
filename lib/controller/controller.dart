import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  String name = '';

  @action
  setName(String newName) => name = newName;

  @observable
  String lastName = '';

  @action
  setLastName(String newLastName) => lastName = newLastName;

  @computed
  String get fullName => "$name $lastName";

  @observable
  String email = '';

  @action
  setEmail(String newEmail) => email = newEmail;

  @observable
  bool isSending = false;

  @action
  setIsSending(bool newSendingState) => isSending = newSendingState;

  @observable
  String message = "";

  @action
  setMessage(String newMessage) => message = newMessage;

  String validateEmail() {
    if (email.contains("@")) {
      return null;
    }
    return "This email is not valid";
  }

  Future<bool> submitForm() async {
    bool isDataValid = false;
    setIsSending(true);
    print(fullName);
    print(email);

    if (email == "leonardo@commitjr.com") {
      isDataValid = true;
    } else {
      isDataValid = false;
      setMessage("Email not found!");
    }

    await Future.delayed(Duration(seconds: 2));
    setIsSending(false);

    return isDataValid;
  }
}
