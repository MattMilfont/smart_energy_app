import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:smart_energy_app/src/core/data/service/api_service_impl.dart';
import 'package:smart_energy_app/src/core/interactor/atom/core_atom.dart';
import 'package:smart_energy_app/src/modules/home/data/home_service.dart';
import 'package:smart_energy_app/src/modules/home/models/box_model.dart';
import 'package:smart_energy_app/src/utils/constants/endpoints.dart';

class HomeServiceImpl implements HomeService {
  final api = ApiServiceImpl();

  @override
  Future<BoxModel> onGetBoxInfo() async {
    final params = {
      'cod_box': user.value.codBox,
    };

    try {
      final Response response = await api.get(
        Endpoints.GET_BOX_INFO,
        queryParam: params,
      );

      final boxInfo = BoxModel.fromJson(response.data);

      log(Endpoints.GET_BOX_INFO);

      log(response.data.toString());

      return boxInfo;
    } catch (e) {
      log('Erro Box: $e');
      rethrow;
    }
  }
}
