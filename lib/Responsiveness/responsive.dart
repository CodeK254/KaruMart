import 'package:flutter/material.dart';

int largeScreenSize = 1100;
int mediusScreenSize = 600;

class ResponsiveScreen extends StatefulWidget {
  final Widget largeScreen;
  final Widget smallScreen;
  final Widget? mediumScreen;

  const ResponsiveScreen({super.key, required this.largeScreen, required this.smallScreen, this.mediumScreen});
  
  static bool isSmallScreen(BuildContext context){
    return MediaQuery.of(context).size.width < mediusScreenSize;
  }

  static bool isMediumScreen(BuildContext context){
    return MediaQuery.of(context).size.width < largeScreenSize && MediaQuery.of(context).size.width >= mediusScreenSize;
  }

  static bool isLargecreen(BuildContext context){
    return MediaQuery.of(context).size.width >= largeScreenSize;
  }

  @override
  State<ResponsiveScreen> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, BoxConstraints constraints){
        double _width = constraints.maxWidth;
        if(_width < mediusScreenSize){
          return widget.smallScreen;
        } else if(_width < largeScreenSize && _width >= mediusScreenSize){
          return widget.mediumScreen ?? widget.largeScreen;
        }
        else {
          return widget.largeScreen;
        }
      }
    );
  }
}