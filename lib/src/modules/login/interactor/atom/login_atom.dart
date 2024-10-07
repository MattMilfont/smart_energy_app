import 'package:asp/asp.dart';
import 'package:smart_energy_app/src/modules/login/interactor/state/login_state.dart';
import 'package:smart_energy_app/src/modules/login/model/login_model.dart';

//Atoms
final loginState = Atom<LoginState>(InitLoginState());
final loginModel = Atom<LoginModel>(LoginModel());

//Action
final onLogin = Atom.action();
final onLogout = Atom.action();
