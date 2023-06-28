import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dynamic.dart';
import 'home.dart';
import 'details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Named and Unnamed Routes',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/details', page: () => DetailsPage()),
        GetPage(name: '/details/:id', page: () => DynamicDetailsPage()),
      ],
      home: HomePage(),
    );
  }
}
