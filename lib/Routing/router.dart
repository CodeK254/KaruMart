// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:karumart/Pages/Screens/overview.dart';

const OverViewPageRoute = "overview";
const ProfilePageRoute = "profile";
const MarketPageRoute = "market";
const DashboardPageRoute = "dashboard";

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case OverViewPageRoute:
      return _getPageRoute(const OverViewPage());

    case ProfilePageRoute:
      return _getPageRoute(const OverViewPage());

    case DashboardPageRoute:
      return _getPageRoute(const OverViewPage());

    default:
      return _getPageRoute(const OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}