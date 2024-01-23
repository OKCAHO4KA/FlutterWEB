import 'package:bases_web/router/route_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configerRouters() {
    router.define('/',
        handler: counterHandler,
        transitionType: TransitionType.fadeIn,
        transitionDuration: const Duration(milliseconds: 200));

    router.define('/stateful',
        handler: counterHandler, transitionType: TransitionType.fadeIn);

    router.define('/provider',
        handler: counterProviderHandler, transitionType: TransitionType.fadeIn);

    router.define('/stateful/:base',
        handler: counterHandler, transitionType: TransitionType.fadeIn);

    router.define('/dashboard/users/:userid/:roleid',
        handler: dashboardUserHandler, transitionType: TransitionType.fadeIn);

    router.notFoundHandler = pageNotFound;
  }
}


//separamos los handlers de las rutas, limpiamos un poco
//поэтому все зандлеры закомментили

//handlers /manejadores
//   static final Handler _counterHandler =
//       Handler(handlerFunc: ((context, parameters) {
//     return CounterView(base: parameters['base']?[0] ?? '5');
//   }));
//   static final Handler _counterProviderHandler =
//       Handler(handlerFunc: (context, parameters) {
//     return CounterProviderView(query: parameters['query']?[0] ?? '20');
//   });

//   static final Handler _pageNotFound =
//       Handler(handlerFunc: ((context, parameters) {
//     return const View404();
//   }));

//   static final Handler dashboardUserHandler =
//       Handler(handlerFunc: (context, params) {
//     print(params);
//     return View404();
//   });
// }

