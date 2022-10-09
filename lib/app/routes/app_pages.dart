import 'package:get/get.dart';

import 'package:card_wallet/app/modules/home/bindings/home_binding.dart';
import 'package:card_wallet/app/modules/home/views/home_view.dart';
import 'package:card_wallet/app/modules/home_page/bindings/home_page_binding.dart';
import 'package:card_wallet/app/modules/home_page/views/home_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePage(),
      binding: HomePageBinding(),
    ),
  ];
}
