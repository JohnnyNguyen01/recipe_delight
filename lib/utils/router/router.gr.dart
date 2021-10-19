// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i6;

import '../../presentation/screens/base_navigation/base_navigation_screen.dart'
    as _i1;
import '../../presentation/screens/home/home_screen.dart' as _i3;
import '../../presentation/screens/random_meal/random_meal_screen.dart' as _i4;
import '../../presentation/screens/settings/settings_screen.dart' as _i5;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    BaseNavigationScreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.BaseNavigationScreen());
    },
    HomeRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    SettingsRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    HomeScreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.HomeScreen());
    },
    RandomMeal.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.RandomMealScreen());
    },
    SettingsScreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.SettingsScreen());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(BaseNavigationScreen.name, path: '/', children: [
          _i2.RouteConfig(HomeRouter.name, path: 'home', children: [
            _i2.RouteConfig(HomeScreen.name, path: ''),
            _i2.RouteConfig(RandomMeal.name, path: 'randomMeal')
          ]),
          _i2.RouteConfig(SettingsRouter.name,
              path: 'settings',
              children: [_i2.RouteConfig(SettingsScreen.name, path: '')])
        ])
      ];
}

/// generated route for [_i1.BaseNavigationScreen]
class BaseNavigationScreen extends _i2.PageRouteInfo<void> {
  const BaseNavigationScreen({List<_i2.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'BaseNavigationScreen';
}

/// generated route for [_i2.EmptyRouterPage]
class HomeRouter extends _i2.PageRouteInfo<void> {
  const HomeRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i2.EmptyRouterPage]
class SettingsRouter extends _i2.PageRouteInfo<void> {
  const SettingsRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'settings', initialChildren: children);

  static const String name = 'SettingsRouter';
}

/// generated route for [_i3.HomeScreen]
class HomeScreen extends _i2.PageRouteInfo<void> {
  const HomeScreen() : super(name, path: '');

  static const String name = 'HomeScreen';
}

/// generated route for [_i4.RandomMealScreen]
class RandomMeal extends _i2.PageRouteInfo<void> {
  const RandomMeal() : super(name, path: 'randomMeal');

  static const String name = 'RandomMeal';
}

/// generated route for [_i5.SettingsScreen]
class SettingsScreen extends _i2.PageRouteInfo<void> {
  const SettingsScreen() : super(name, path: '');

  static const String name = 'SettingsScreen';
}
