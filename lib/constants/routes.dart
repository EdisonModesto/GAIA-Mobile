import 'package:gaia/View/menu/item1/Item1View.dart';
import 'package:gaia/View/menu/item2/BackGardening.dart';
import 'package:gaia/View/menu/item4/Compost.dart';
import 'package:gaia/View/menu/item4/EggShell.dart';
import 'package:gaia/View/menu/item4/FAA.dart';
import 'package:gaia/View/menu/item4/FFJ.dart';
import 'package:gaia/common/BubbleView.dart';
import 'package:gaia/common/DescView.dart';
import 'package:gaia/common/MaterialsView.dart';
import 'package:gaia/common/PageView.dart';
import 'package:gaia/common/StepsView.dart';
import 'package:go_router/go_router.dart';

import '../View/menu/item2/Hydrophonics.dart';
import '../View/menu/item2/Item2View.dart';
import '../View/menu/item3/Item3View.dart';
import '../View/menu/item4/FPJ.dart';
import '../View/menu/item4/Item4View.dart';
import '../View/menu/item5/Item5View.dart';
import '../View/menu/item6/Item6View.dart';
import '../View/menu/item7/Item7View.dart';
import '../View/menu/item8/Item8View.dart';
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
      path: "/desc:title/:image/:desc",
      name: "desc",
      builder: (context, state) => DescView(title: state.params["title"], image: state.params["image"], desc: state.params["desc"],),
    ),
    GoRoute(
      path: "/materials:title/:image",
      name: "materials",
      builder: (context, state) => MaterialsView(title: state.params["title"], image: state.params["image"]),
    ),
    GoRoute(
      path: "/steps:title/:desc",
      name: "steps",
      builder: (context, state) => StepsView(title: state.params["title"], desc: state.params["desc"]),
    ),
    GoRoute(
      path: "/bubble:title/:image/:desc",
      name: "bubble",
      builder: (context, state) => BubbleView(title: state.params["title"], image: state.params["image"], desc: state.params["desc"],),
    ),
    GoRoute(
      path: "/pageView",
      builder: (context, state) => DescPageView(pageDetails: state.extra as PageArguments),
    ),
    GoRoute(
      path: "/item1",
      builder: (context, state) => const Item1View(),
    ),
    GoRoute(
      path: "/item2",
      builder: (context, state) => const Item2View(),
    ),
    GoRoute(
      path: "/backyardGardening",
      builder: (context, state) => const BackGardeningView(),
    ),
    GoRoute(
      path: "/hydrophonics",
      builder: (context, state) => const Hydrophonics(),
    ),
    GoRoute(
      path: "/item3",
      builder: (context, state) => const Item3View(),
    ),
    GoRoute(
      path: "/item4",
      builder: (context, state) => const Item4View(),
    ),
    GoRoute(
      path: "/FFJ",
      builder: (context, state) => const FFJ(),
    ),
    GoRoute(
      path: "/FAA",
      builder: (context, state) => const FAA(),
    ),
    GoRoute(
      path: "/FPJ",
      builder: (context, state) => const FPJ(),
    ),
    GoRoute(
      path: "/EggShells",
      builder: (context, state) => const EggShell(),
    ),
    GoRoute(
      path: "/compost",
      builder: (context, state) => const CompostView(),
    ),
    GoRoute(
      path: "/item5",
      builder: (context, state) => const Item5View(),
    ),
    GoRoute(
      path: "/item6",
      builder: (context, state) => const Item6View(),
    ),
    GoRoute(
      path: "/item7",
      builder: (context, state) => const Item7View(),
    ),
    GoRoute(
      path: "/item8",
      builder: (context, state) => const Item8View(),
    ),
    
  ]
);