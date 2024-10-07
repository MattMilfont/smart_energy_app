import 'package:smart_energy_app/src/modules/home/models/box_model.dart';

abstract class HomeService {
  Future<BoxModel> onGetBoxInfo();
}