import 'package:flutter/material.dart';
import 'package:karumart/Constants/customText.dart';

class OverViewPage extends StatefulWidget {
  const OverViewPage({super.key});

  @override
  State<OverViewPage> createState() => _OverViewPageState();
}

class _OverViewPageState extends State<OverViewPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: CustomText(
            text: "OverView Page",
            fontSize: 20,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}