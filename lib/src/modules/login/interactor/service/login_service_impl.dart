import 'dart:developer';

import 'package:smart_energy_app/src/core/data/service/api_service_impl.dart';
import 'package:smart_energy_app/src/core/models/user_model.dart';
import 'package:smart_energy_app/src/modules/login/data/login_service.dart';
import 'package:smart_energy_app/src/modules/login/model/login_model.dart';
import 'package:smart_energy_app/src/utils/constants/endpoints.dart';

class LoginServiceImpl implements LoginService {
  final api = ApiServiceImpl();

  @override
  Future<UserModel> onLogin(LoginModel model) async {
    try {
      final response = await api.get(
        Endpoints.GET_USER,
        queryParam: model.toJson(),
      );

      final user = UserModel.fromJson(response.data);

      log(Endpoints.GET_USER);

      log(response.data.toString());

      return user;
    } catch (e) {
      log('Erro Login: $e');
      rethrow;
    }
  }
}
