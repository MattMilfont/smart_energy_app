import 'package:flutter/material.dart';
import 'package:smart_energy_app/src/modules/splash/interactor/atom/splash_atom.dart';
import 'package:smart_energy_app/src/utils/app_assets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    onCheckInitialConfiguration.call();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Image.asset(AppAssets.logo)],
      ),
    );
  }
}
