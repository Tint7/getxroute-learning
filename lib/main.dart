import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'loginmiddleware.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      initialRoute: '/home',
      onGenerateRoute: LoggingMiddleware.onGenerateRoute,
    );
  }
}
