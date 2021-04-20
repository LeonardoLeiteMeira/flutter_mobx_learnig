import 'package:flutter_mobx_learning/services/ILoginRepository.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

@lazySingleton
class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  final ILoginRepository loginRepository;

  @observable
  String name = '';

  LoginControllerBase(this.loginRepository);

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

  String? validateEmail() {
    if (email.contains("@")) {
      return null;
    }
    return isFilling ? "This email is not valid" : null;
  }

  String? validateName() {
    if (name.length > 3) {
      return null;
    }
    return isFilling ? "Name must be 3 character" : null;
  }

  String? validateLastName() {
    if (!isFilling) return null;
    if (lastName.length > 3) {
      return null;
    }
    return isFilling ? "Last name must be 3 character" : null;
  }

  Future<bool> submitForm(String email) async {
    bool isDataValid = false;
    setIsSending(true);
    print(fullName);
    print(email);

    isDataValid = await loginRepository.login(email);
    if (!isDataValid) {
      setMessage("Email not found!");
    }

    setIsSending(false);
    return isDataValid;
  }
}
