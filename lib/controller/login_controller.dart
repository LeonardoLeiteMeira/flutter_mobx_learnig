import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
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

  bool isFilling = false;
  setIsFilling(bool newIsFilling) => isFilling = newIsFilling;

  String validateEmail() {
    if (email.contains("@")) {
      return null;
    }
    return isFilling?"This email is not valid":null;
  }

  String validateName() {
    if (name.length > 3) {
      return null;
    }
    return isFilling?"Name must be 3 character":null;
  }

  String validateLastName() {
    if (!isFilling) return null;
    if (lastName.length > 3) {
      return null;
    }
    return isFilling?"Last name must be 3 character":null;
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
