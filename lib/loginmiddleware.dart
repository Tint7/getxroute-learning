import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'detailscreen.dart';
import 'homescreen.dart';
import 'notfoundscreen.dart';

class LoggingMiddleware {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    print('Navigating to: ${settings.name}');
    return GetPageRoute(
      settings: settings,
      page: () => _getPage(settings),
    );
  }

  static Widget _getPage(RouteSettings settings) {
    // Map your routes to corresponding widgets/screens
    switch (settings.name) {
      case '/home':
        return HomeScreen();
      case '/details':
        return DetailsScreen();
      default:
        return NotFoundScreen();
    }
  }
}
