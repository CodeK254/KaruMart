import 'package:flutter/material.dart';
import 'package:karumart/Constants/customText.dart';
import 'package:karumart/Constants/side_nav.dart';
import 'package:karumart/Responsiveness/responsive.dart';

class SideNavigation extends StatefulWidget {
  const SideNavigation({super.key});

  @override
  State<SideNavigation> createState() => _SideNavigationState();
}

class _SideNavigationState extends State<SideNavigation> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            sideNavigation.length, 
            (index) => InkWell(
              onTap: (){
                setState(() {
                  selected = index;
                });
              },
              splashColor: Colors.green,
              child: !ResponsiveScreen.isMediumScreen(context) ? Container(
                color: selected != index ? Colors.white : Colors.blueGrey[600],
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  child: Row(
                    children: [
                      Icon(
                        sideNavigation[index].icon,
                        color: selected != index ? Colors.grey : Colors.white,
                        size: 25,
                      ),
                      const SizedBox(width: 10),
                      CustomText(
                        text: sideNavigation[index].name,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: selected != index ? Colors.blueGrey : Colors.white,
                      ),
                    ],
                  ),
                ),
              ) : Container(
                color: selected != index ? Colors.white : Colors.blueGrey[600],
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        sideNavigation[index].icon,
                        color: selected != index ? Colors.grey : Colors.white,
                        size: 20,
                      ),
                      const SizedBox(height: 5),
                      CustomText(
                        text: sideNavigation[index].name,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: selected != index ? Colors.blueGrey : Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}