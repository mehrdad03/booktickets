import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          const Gap(40),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good morning',
                            style: Styles.headLineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            'Book Tickets',
                            style: Styles.headLineStyle1,
                          )
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/img_1.png"))),
                      )
                    ],
                  ),
                  const Gap(25),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD)),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          const Icon(FluentSystemIcons.ic_fluent_search_regular,
                              color: Color(0xFFBFC205)),
                          const Gap(5),
                          Text("Search", style: Styles.headLineStyle4)
                        ],
                      ),
                    ),
                  ),
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Upcoming Flights", style: Styles.headLineStyle2),
                      InkWell(
                          onTap: () {},
                          child: Text("View all",
                              style: Styles.textStyle.copyWith(color: primary)))
                    ],
                  )
                ],
              ),
            ),
          ),
          Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TicketView(),
                TicketView(),
              ],
            ),
          ),
          Gap(15),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hotels", style: Styles.headLineStyle2),
                      InkWell(
                          onTap: () {},
                          child: Text("View all",
                              style: Styles.textStyle.copyWith(color: primary)))
                    ],
                  )
                ],
              ),
            ),
          ),
          Gap(15),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           padding: EdgeInsets.only(left: 20),
           child:  Row(
             children: [
               HotelScreen(),
               HotelScreen(),
               HotelScreen(),
             ],
           ),
         )
        ],
      ),
    );
  }
}
