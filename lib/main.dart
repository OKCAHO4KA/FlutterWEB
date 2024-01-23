import 'package:bases_web/locator.dart';
import 'package:bases_web/router/router.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  Flurorouter.configerRouters();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (context, child) {
        return MainLayoutPage(child: child!);
      },
      debugShowCheckedModeBanner: false,
      title: 'Rutas App',
      onGenerateRoute: (routeSettings) =>
          Flurorouter.router.generator(routeSettings),
      // onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
    );
  }
}
