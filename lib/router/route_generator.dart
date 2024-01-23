import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(
            const CounterView(
              base: '5',
            ),
            '/stateful');
      // return MaterialPageRoute(
      //     builder: (_) => const CounterPage(),
      //     settings: const RouteSettings(name: '/stateful'));
      case '/provider':
        return _fadeRoute(
            const CounterProviderView(
              query: '50',
            ),
            '/provider');
      // return MaterialPageRoute(
      //     builder: (_) => const CounterProviderPage(),
      //     settings: const RouteSettings(name: '/provider'));

      default:
        return _fadeRoute(const View404(), '/404');
      // return MaterialPageRoute(
      //     builder: (_) => const Page404(),
      //     settings: const RouteSettings(name: '/404'));
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (_, __, ___) => child,
        transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
            ? FadeTransition(
                opacity: animation,
                child: child,
              )
            : CupertinoPageTransition(
                primaryRouteAnimation: animation,
                secondaryRouteAnimation: __,
                linearTransition: true,
                child: child,
              ),
        settings: RouteSettings(name: routeName));
  }
}
