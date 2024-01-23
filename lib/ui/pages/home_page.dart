import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

import '../views/views.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const _HomeBody(),
        Positioned(right: 20, top: 20, child: CustomAppMenu())
      ],
    ));
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return PageView(scrollDirection: Axis.vertical, children: const [
      HomeView(),
      AboutView(),
      PricingView(),
      ContactView(),
      LocationView()
    ]);
  }
}
