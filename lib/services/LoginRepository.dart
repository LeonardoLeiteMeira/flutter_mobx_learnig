import 'package:flutter_mobx_learning/services/ILoginRepository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:ILoginRepository)
class LoginRepository implements ILoginRepository {
  @override
  Future<bool> login(String email) async {
    bool success = false;
    if (email == "leonardo@commitjr.com") {
      success = true;
    }
    Future.delayed(Duration(seconds: 1));
    return success;
  }
}
