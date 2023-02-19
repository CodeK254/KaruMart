import 'package:flutter/material.dart';
import 'package:karumart/Pages/Screens/overview.dart';

class SideNav{
  String name;
  String url;
  IconData icon;
  Widget page;

  SideNav({
    required this.name,
    required this.page,
    required this.icon,
    required this.url,
  });
}

List<SideNav> sideNavigation = [
  SideNav(name: "Overview", icon: Icons.grade, page: const OverViewPage(), url: "/"),
  SideNav(name: "DashBoard", icon: Icons.dashboard, page: const OverViewPage(), url: "/"),
  SideNav(name: "Market", icon: Icons.shop, page: const OverViewPage(), url: "/"),
  SideNav(name: "Profile", icon: Icons.person, page: const OverViewPage(), url: "/"),
];