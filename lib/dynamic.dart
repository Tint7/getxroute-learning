import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DynamicDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Extract the dynamic parameter value from the route
    final dynamic id = Get.parameters['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Details Page'),
      ),
      body: Center(
        child: Text('Dynamic ID: $id'),
      ),
    );
  }
}
