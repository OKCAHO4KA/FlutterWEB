import 'package:bases_web/ui/pages/home_page.dart';
import 'package:fluro/fluro.dart';

final homeHandler = Handler(handlerFunc: (context, params) {
  return const HomePage();
});
