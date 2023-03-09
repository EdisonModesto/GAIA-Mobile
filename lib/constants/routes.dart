import 'package:gaia/View/menu/item1/Item1View.dart';
import 'package:go_router/go_router.dart';

import '../View/menu/menuView.dart';
import '../View/splash/splashView.dart';

var routes = GoRouter(
  initialLocation: "/Splash",
  routes: [
    GoRoute(
      path: "/Splash",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: "/Menu",
      builder: (context, state) => const MenuView(),
    ),
    GoRoute(
      path: "/item1",
      builder: (context, state) => const Item1View(),
    ),
  ]
);