import 'package:asp/asp.dart';
import 'package:smart_energy_app/src/modules/home/interactor/state/home_state.dart';
import 'package:smart_energy_app/src/modules/home/models/box_model.dart';

final homeState = Atom<HomeState>(InitHomeState());

final onGetBoxInfo = Atom.action();

final boxInfo = Atom<BoxModel>(BoxModel());
