import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karumart/Layouts/layout.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const LayoutScreen(),
    )
  );
}