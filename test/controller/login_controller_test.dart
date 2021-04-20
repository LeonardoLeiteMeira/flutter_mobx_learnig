import 'package:flutter_mobx_learning/controller/login_controller.dart';
import 'package:flutter_mobx_learning/services/ILoginRepository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'login_controller_test.mocks.dart';

@GenerateMocks([ILoginRepository])
main() {
  late ILoginRepository mock;
  late LoginController loginController;

  setUp(() {
    mock = MockILoginRepository();
    loginController = LoginController(mock);
  });

  group("Login test", () {
    test('Login error', () async {
      when(mock.login("leonards@commitjr.com")).thenAnswer((_) async => false);

      bool result = await loginController.submitForm("leonards@commitjr.com");
      expect(result, false);
    });

    test('Login success', () async {
      when(mock.login("leonardo@commitjr.com")).thenAnswer((_) async => Future.value(true));
      bool result = await loginController.submitForm("leonardo@commitjr.com");
      expect(result, true);
    });
  });
}
