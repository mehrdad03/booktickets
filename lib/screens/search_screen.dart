import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\n you looking for?",
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getHeight(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color: const Color(0xFFF4F6FD),
              ),
              child: Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(AppLayout.getHeight(50))),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text("Airline Tickets"),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(AppLayout.getHeight(50))),
                      color: Colors.transparent,
                    ),
                    child: const Center(
                      child: Text("Airline Tickets"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
            text: "Departure",
            icon: Icons.flight_takeoff_rounded,
          ),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(
            text: "Arrival",
            icon: Icons.flight_land_rounded,
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(18),
                horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
                color: Color(0xD91130CE),
                borderRadius: BorderRadius.circular(
                  AppLayout.getWidth(5),
                )),
            child: Center(
              child: Text(
                "Find tickets",
                style: Styles.textStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          AppDoubleTextWidget(
              bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(AppLayout.getHeight(15)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * .42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg"),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: AppLayout.getHeight(200),
                        width: size.width * .44,
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(15)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 1,
                                spreadRadius: 1,
                              )
                            ]),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getHeight(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                          top: -40,
                          child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 18, color: Color(0xFF189999)),
                            color: Colors.transparent),
                      ))
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    height: AppLayout.getHeight(185),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                        color: Styles.orangeColor,
                        borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 1,
                          )
                        ]),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getHeight(15)),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,),textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(10)),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'X',
                              style: TextStyle(fontSize: 38)
                            ),TextSpan(
                              text: 'Y',
                              style: TextStyle(fontSize: 50)
                            ),TextSpan(
                              text: 'Z',
                              style: TextStyle(fontSize: 38)
                            ),
                          ]
                        ),

                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
