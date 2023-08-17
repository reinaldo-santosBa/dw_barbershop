import 'package:asyncstate/widget/async_state_builder.dart';
import 'package:dw_barbershop/src/core/ui/widgets/barber_shop_loader.dart';
import 'package:dw_barbershop/src/features/splash_page.dart';
 import 'package:flutter/material.dart';

class BarbershopApp extends StatelessWidget {
  const BarbershopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      customLoader: const BarbershopLoader(),
      builder: (asyncNavigatorObserver) {
      return MaterialApp(
        title: 'Barbershop App',
        navigatorObservers: [asyncNavigatorObserver],
        routes: {
          '/': (_) => const SplashPageApp()
        },
      );
    });
    
  }
}