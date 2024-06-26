import 'package:financial_management_app/features/presenter/modules/home_page/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'consts/app_routes.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
    r.child(AppRoutes.homePage, child: (context) => const HomePage());
  }
}
