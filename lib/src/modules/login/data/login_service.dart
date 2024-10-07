
import 'package:smart_energy_app/src/core/models/user_model.dart';
import 'package:smart_energy_app/src/modules/login/model/login_model.dart';

abstract class LoginService {
  Future<UserModel> onLogin(LoginModel model);
}
