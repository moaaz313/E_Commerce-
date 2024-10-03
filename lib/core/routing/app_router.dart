// ignore_for_file: depend_on_referenced_packages

import 'package:e_commerce/featuers/accessories/ui/accessories_screen.dart.dart';
import 'package:e_commerce/featuers/bags/ui/bags_screen.dart';
import 'package:e_commerce/featuers/home/ui/home_screen.dart';
import 'package:e_commerce/featuers/hoodies/ui/hoodies_screen.dart';
import 'package:e_commerce/featuers/shoes/ui/shoes_screen.dart';
import 'package:e_commerce/featuers/shorts/ui/shorts_screen.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.accessoriesScreen:
        return MaterialPageRoute(
          builder: (_) => const AccessoriesScreen(),
        );
      case Routes.bagsScreen:
        return MaterialPageRoute(
          builder: (_) => const BagsScreen(),
        );
      case Routes.hoodiesScreen:
        return MaterialPageRoute(
          builder: (_) => const HoodiesScreen(),
        );
      case Routes.shoesScreen:
        return MaterialPageRoute(
          builder: (_) => const ShoesScreen(),
        );
      case Routes.shortsScreen:
        return MaterialPageRoute(
          builder: (_) => const ShortsScreen(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
