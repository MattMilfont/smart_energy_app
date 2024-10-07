import 'dart:developer';

import 'package:asp/asp.dart';
import 'package:smart_energy_app/src/core/interactor/service/exception/base_response_error.dart';
import 'package:smart_energy_app/src/modules/home/data/home_service.dart';
import 'package:smart_energy_app/src/modules/home/interactor/atom/home_atom.dart';
import 'package:smart_energy_app/src/modules/home/interactor/state/home_state.dart';

class HomeReducer extends Reducer with BaseResponseError {
  HomeService service;

  HomeReducer(this.service) {
    on(() => [onGetBoxInfo], _onGetBoxInfo);
  }

  Future<void> _onGetBoxInfo() async {
    if (homeState.value is LoadingHomeState) return;
    homeState.setValue(LoadingHomeState());

    try {
      final boxInfoResult = await service.onGetBoxInfo();

      boxInfo.setValue(boxInfoResult);
      log(boxInfo.value.codBox!);

      homeState.setValue(SuccessHomeState());
    } catch (e) {
      homeState.setValue(ErrorHomeState());
    }
  }
}
