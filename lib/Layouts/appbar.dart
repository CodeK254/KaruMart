import 'package:flutter/material.dart';
import 'package:karumart/Constants/customText.dart';
import 'package:karumart/Responsiveness/responsive.dart';

AppBar appBarLayout(context, GlobalKey<ScaffoldState> key){
  return AppBar(
    toolbarHeight: ResponsiveScreen.isSmallScreen(context) ? 50 : 65,
    elevation: 1,
    backgroundColor: Colors.green,
    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 25,
    ),
    leading: ResponsiveScreen.isSmallScreen(context) ? GestureDetector(
      onTap: (){
        key.currentState!.openDrawer();
      },
      child: const Icon(
        Icons.menu,
      ),
    ) : Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.green,
            child: const Image(
              image: AssetImage("assets/logo.png"),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    ),
    title: !ResponsiveScreen.isSmallScreen(context) ? Row(
      children: [
        CustomText(
          text: "Karu-Mart",
          fontSize: 25,
          // fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
          color: Colors.white,
        ),
        Expanded(child: Container()),
        const Icon(
          Icons.settings,
        ),
        const SizedBox(width: 10),
        Stack(
          children: const [
            Icon(
              Icons.notifications,
            ),
            Positioned(
              top: 2,
              right: 3,
              child: CircleAvatar(
                radius: 4,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 3,
                  backgroundColor: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Container(
          height: 50,
          width: 2,
          color: Colors.grey[200],
        ),
        const SizedBox(width: 10),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.grey[200],
            child: const Icon(
              Icons.person,
              size: 30,
              color: Colors.white60,
            ),
          ),
        ),
        const SizedBox(width: 10),
        CustomText(
          text: "Titus Kariuki",
          fontSize: 20,
          letterSpacing: 1.2,
          color: Colors.white54,
        ),
        const SizedBox(width: 10),
      ],
    ) : Row(
      children: [
        CustomText(
          text: "Karu-Mart",
          fontSize: 25,
          // fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
          color: Colors.white,
        ),
        Expanded(child: Container()),
        const Icon(
          Icons.settings,
        ),
        const SizedBox(width: 10),
        Stack(
          children: const [
            Icon(
              Icons.notifications,
            ),
            Positioned(
              top: 2,
              right: 3,
              child: CircleAvatar(
                radius: 4,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 3,
                  backgroundColor: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 10),
      ],
    ),
  );
}