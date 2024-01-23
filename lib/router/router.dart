import 'package:bases_web/router/router_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/:page', handler: homeHandler);

    router.notFoundHandler = homeHandler;
  }
}
