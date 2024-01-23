import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

final Handler counterHandler = Handler(handlerFunc: ((context, parameters) {
  return CounterView(base: parameters['base']?.first ?? '5');
}));
final Handler counterProviderHandler =
    Handler(handlerFunc: (context, parameters) {
  return CounterProviderView(query: parameters['query']?.first ?? '20');
});

final Handler pageNotFound = Handler(handlerFunc: ((context, parameters) {
  return const View404();
}));

final Handler dashboardUserHandler = Handler(handlerFunc: (context, params) {
  print(params);
  return View404();
});
