import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_energy_app/src/core/data/service/api_service_impl.dart';
import 'package:smart_energy_app/src/core/data/service/dio_api_interceptor_impl.dart';
import 'package:smart_energy_app/src/core/interactor/service/api_interceptor.dart';
import 'package:smart_energy_app/src/core/interactor/service/api_service.dart';
import 'package:smart_energy_app/src/modules/home/home_module.dart';
import 'package:smart_energy_app/src/modules/login/login_module.dart';
import 'package:smart_energy_app/src/modules/splash/interactor/reducer/splash_reducer.dart';
import 'package:smart_energy_app/src/modules/splash/presenter/splash_page.dart';
import 'package:smart_energy_app/src/utils/constants/routes/app_routes.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    super.binds(i);
    i.addSingleton<SplashReducer>(SplashReducer.new);
  }

  @override
  void exportedBinds(Injector i) {
    super.exportedBinds(i);
    final dio = Dio();
    dio.interceptors.add(DioApiInterceptorImpl().interceptor);
    i
      ..addSingleton<ApiInterceptor>(DioApiInterceptorImpl.new)
      ..addSingleton<ApiService>(ApiServiceImpl.new);
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);
    r
      ..child(AppRoutes.initialRoute, child: (ctx) => const SplashPage())
      ..module(AppRoutes.login, module: LoginModule())
      ..module(AppRoutes.home, module: HomeModule());
  }
}
