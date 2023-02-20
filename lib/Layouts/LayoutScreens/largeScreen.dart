// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:karumart/Layouts/LayoutScreens/side_nav.dart';
import 'package:karumart/Pages/Screens/overview.dart';

class LargeScreen extends StatefulWidget {
  const LargeScreen({super.key});

  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          Expanded(
            flex: 5,
            child: OverViewPage(),
          ),
        ],
      ),
    );
  }
}