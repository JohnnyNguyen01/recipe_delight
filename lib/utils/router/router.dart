import 'package:auto_route/auto_route.dart';
import 'package:recipe_app/presentation/screens/base_navigation/base_navigation_screen.dart';
import 'package:recipe_app/presentation/screens/home/home_screen.dart';
import 'package:recipe_app/presentation/screens/random_meal/random_meal_screen.dart';
import 'package:recipe_app/presentation/screens/settings/settings_screen.dart';
import 'package:recipe_app/utils/router/route_paths.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: BaseNavigationScreen,
      children: [
        // Home Tab
        AutoRoute(
          path: RoutePath.homeTab,
          name: RouteName.homeTabRouter,
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: HomeScreen,
            ),
            AutoRoute(
              path: RoutePath.randomMeal,
              name: RouteName.randomMeal,
              page: RandomMealScreen,
            ),
          ],
        ),
        // Settings Tab
        AutoRoute(
          path: RoutePath.settingsTab,
          name: RouteName.settingsTabRouter,
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: SettingsScreen,
            )
          ],
        ),
      ],
    )
  ],
)
class $AppRouter {}
