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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List dummy = [
      {"label": "No. of markets", "value": 37.55},
      {"label": "Total profit earned", "value": 4605.55},
      {"label": "Turnover goods & services", "value": 436.75},
    ];

    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Colors.green[300],
                child: Container(
                  height: 120,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/logo.png"),
                      // fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
              ),
            ),
          ],
        ),
        ListView(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.1,
          ),
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.06, bottom: height * 0.012),
              child: CustomText(
                text: "Market Overview",
                color: Colors.white,
                fontSize: 35,
              ),
            ),
            Row(
              children: [
                ...List.generate(
                  3, 
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Container(
                      height: height * 0.25,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.shade100,
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.02,
                          vertical: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              dummy[index]["label"],
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "\$${dummy[index]["value"].toString()}",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                )
              ],
            ),
            SizedBox(height: height * 0.1),
            Container(
              height: height * 0.5,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.shade100,
                    blurRadius: 7,
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.3),
          ],
        ),
      ],
    );
  }
}