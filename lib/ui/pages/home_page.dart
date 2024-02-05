import 'package:bases_web/providers/page_provider.dart';
import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return PageView(
        controller: pageProvider.scrollController,
        scrollDirection: Axis.vertical,
        children: const [
          HomeView(),
          AboutView(),
          PricingView(),
          ContactView(),
          LocationView()
        ]);
  }
}
