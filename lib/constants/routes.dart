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
  ]
);