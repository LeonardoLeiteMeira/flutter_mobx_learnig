// Mocks generated by Mockito 5.0.4 from annotations
// in flutter_mobx_learning/test/controller/login_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:flutter_mobx_learning/services/ILoginRepository.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

/// A class which mocks [ILoginRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockILoginRepository extends _i1.Mock implements _i2.ILoginRepository {
  MockILoginRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<bool> login(String? email) =>
      (super.noSuchMethod(Invocation.method(#login, [email]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
}
