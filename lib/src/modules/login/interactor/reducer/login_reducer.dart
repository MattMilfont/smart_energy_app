import 'dart:developer';

import 'package:asp/asp.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_energy_app/src/core/interactor/atom/core_atom.dart';
import 'package:smart_energy_app/src/core/interactor/service/exception/base_response_error.dart';
import 'package:smart_energy_app/src/modules/login/data/login_service.dart';
import 'package:smart_energy_app/src/modules/login/interactor/atom/login_atom.dart';
import 'package:smart_energy_app/src/modules/login/interactor/state/login_state.dart';
import 'package:smart_energy_app/src/utils/constants/routes/app_routes.dart';

class LoginReducer extends Reducer with BaseResponseError {
  LoginService service;

  LoginReducer(this.service) {
    on(() => [onLogin], _onLogin);
  }

  Future<void> _onLogin() async {
    if (loginState.value is LoadingLoginState) return;
    loginState.setValue(LoadingLoginState());
    try {
      final userResult = await service.onLogin(loginModel.value);

      user.setValue(userResult);
      log(user.value.name!);

      loginState.setValue(SuccessLoginState());
      Modular.to.navigate(AppRoutes.home);
    } catch (e) {
      loginState.setValue(
        ErrorLoginState(
          erroMsg: 'Não foi possível fazer Login, tente novamente!',
        ),
      );
    }
  }
}
