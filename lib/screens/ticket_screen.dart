import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../utils/app_styles.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(20),
                  vertical: AppLayout.getHeight(20)),
              children: [
                Gap(AppLayout.getHeight(40)),
                Text(
                  "Tickets",
                  style: Styles.headLineStyle1
                      .copyWith(fontSize: AppLayout.getHeight(35)),
                ),
                Gap(AppLayout.getHeight(20)),
                const AppTicketTab(firstTab: "Upcoming", secondTab: 'Previous'),
                Gap(AppLayout.getHeight(25)),
                Container(
                  padding: EdgeInsets.only(
                      left: AppLayout.getHeight(10),
                      right: AppLayout.getHeight(15)),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  margin: EdgeInsets.only(left: 26, right: 15),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          AppColumnLayout(
                            firstText: "Flutter Db",
                            secondText: "Passenger",
                            alignment: CrossAxisAlignment.start,
                          ),
                          Spacer(),
                          AppColumnLayout(
                            firstText: "5221 125869",
                            secondText: "password",
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        children: const [
                          AppColumnLayout(
                            firstText: "325645 9843748",
                            secondText: "Number of E-ticket",
                            alignment: CrossAxisAlignment.start,
                          ),
                          Spacer(),
                          AppColumnLayout(
                            firstText: "B2SF423",
                            secondText: "Booking Code",
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/visa.png",
                                    scale: 11,
                                  ),
                                  Gap(AppLayout.getWidth(5)),
                                  Text(
                                    "*** 2546",
                                    style: Styles.headLineStyle3
                                        .copyWith(color: Colors.black),
                                  )
                                ],
                              ),
                              Gap(AppLayout.getWidth(5)),
                              Text(
                                "Paymnet Method",
                                style: Styles.headLineStyle4,
                              )
                            ],
                          ),
                          Spacer(),
                          const AppColumnLayout(
                              firstText: '\$249.6 ',
                              secondText: "price",
                              alignment: CrossAxisAlignment.end)
                        ],
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(AppLayout.getHeight(21)),
                        bottomLeft: Radius.circular(AppLayout.getHeight(21))),
                  ),
                  padding:  EdgeInsets.only(left: AppLayout.getHeight(15), right: AppLayout.getHeight(15)),
                  margin:  EdgeInsets.only(left: AppLayout.getHeight(25), right: AppLayout.getHeight(15)),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(15)),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(15)),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https:??google.com',
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                  ),
                ),
                Gap(AppLayout.getWidth(15)),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(10)),
                    child: TicketView(ticket: ticketList.first))
              ])
        ],
      ),
    );
  }
}
