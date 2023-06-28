import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'details.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Go to Details (Named Route)'),
              onPressed: () {
                Get.toNamed('/details');
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Go to Details (Unnamed Route)'),
              onPressed: () {
                Get.to(DetailsPage());
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Go to Dynamic Details'),
              onPressed: () {
                Get.toNamed('/details/123');
              },
            ),
          ],
        ),
      ),
    );
  }
}
