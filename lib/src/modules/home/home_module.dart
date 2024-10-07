import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_energy_app/src/modules/home/data/home_service.dart';
import 'package:smart_energy_app/src/modules/home/interactor/reducer/home_reducer.dart';
import 'package:smart_energy_app/src/modules/home/interactor/service/home_service_impl.dart';
import 'package:smart_energy_app/src/modules/home/presenter/home_page.dart';
import 'package:smart_energy_app/src/utils/constants/routes/app_routes.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    i
      ..addSingleton<HomeService>(HomeServiceImpl.new)
      ..addSingleton<HomeReducer>(HomeReducer.new);
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child(AppRoutes.initialRoute, child: (ctx) => const HomePage());
  }
}
