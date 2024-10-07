import 'package:asp/asp.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_energy_app/src/modules/splash/interactor/atom/splash_atom.dart';
import 'package:smart_energy_app/src/utils/constants/routes/app_routes.dart';

class SplashReducer extends Reducer{

  SplashReducer(){
    on(() => [onCheckInitialConfiguration], _onCheckInitialConfiguration);
  }

  Future<void> _onCheckInitialConfiguration() async {
    Modular.to.navigate(AppRoutes.login);
  }
}
