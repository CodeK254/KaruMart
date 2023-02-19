import 'package:flutter/material.dart';
import 'package:karumart/Constants/side_nav.dart';
import 'package:karumart/Layouts/LayoutScreens/side_nav.dart';
import 'package:karumart/Layouts/appbar.dart';
import 'package:karumart/Layouts/LayoutScreens/largeScreen.dart';
import 'package:karumart/Layouts/LayoutScreens/smallScreen.dart';
import 'package:karumart/Responsiveness/responsive.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: appBarLayout(context, key),
      drawer: Padding(
        padding: const EdgeInsets.only(top: 85),
        child: Drawer(
          width: MediaQuery.of(context).size.width * 0.75,
          child: const SideNavigation(),
        ),
      ),
      body: const ResponsiveScreen(
        largeScreen: LargeScreen(), 
        smallScreen: SmallScreen(),
      ),
    );
  }
}