import "package:flutter/material.dart";
import 'package:karumart/Pages/Screens/overview.dart';

class SmallScreen extends StatefulWidget {
  const SmallScreen({super.key});

  @override
  State<SmallScreen> createState() => _SmallScreenState();
}

class _SmallScreenState extends State<SmallScreen> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OverViewPage()
    );
  }
}