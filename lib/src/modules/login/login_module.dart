import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_energy_app/src/modules/login/data/login_service.dart';
import 'package:smart_energy_app/src/modules/login/interactor/reducer/login_reducer.dart';
import 'package:smart_energy_app/src/modules/login/interactor/service/login_service_impl.dart';
import 'package:smart_energy_app/src/modules/login/presenter/login_page.dart';
import 'package:smart_energy_app/src/utils/constants/routes/app_routes.dart';
// import 'package:grid_box/src/core/data/service/api_service_impl.dart';
// import 'package:grid_box/src/core/data/service/dio_api_interceptor_impl.dart';
// import 'package:grid_box/src/core/interactor/service/api_interceptor.dart';
// import 'package:grid_box/src/core/interactor/service/api_service.dart';

class LoginModule extends Module{

  @override
  void binds(Injector i) {
    i
    // ..addSingleton<ApiInterceptor>(DioApiInterceptorImpl.new)
    // ..addSingleton<ApiService>(ApiServiceImpl.new)
    ..addSingleton<LoginService>(LoginServiceImpl.new)
    ..addSingleton<LoginReducer>(LoginReducer.new);
    
  }

  @override
  void routes(RouteManager r){
    super.routes(r);
    r.child(AppRoutes.initialRoute, child: (ctx) => const LoginPage());
  }
}
