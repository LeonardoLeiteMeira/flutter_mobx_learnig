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

  String validateEmail() {
    if (email.contains("@")) {
      return null;
    }
    return "This email is not valid";
  }

  Future<bool> submitForm() async {
    setIsSending(true);
    print(fullName);
    print(email);
    /**
     * Verify login here
     */
    await Future.delayed(Duration(seconds: 2));
    
    setIsSending(false);
    return true;
  }
}
