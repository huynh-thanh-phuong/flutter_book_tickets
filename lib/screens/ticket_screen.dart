import 'package:book_tickets/until/app_info_list.dart';
import 'package:book_tickets/until/app_style.dart';
import 'package:book_tickets/widget/ticket_tapbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../until/app_layout.dart';
import '../widget/column_layout.dart';
import '../widget/layout_builder_widget.dart';
import 'tickets_view.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScren extends StatelessWidget {
  const TicketScren({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Stickets",
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(15)),
              const AppTicketTaps(
                  firstTapText: "Upcoming", secondTapText: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: SticketView(
                  tickets: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getHeight(20)),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: "5221 478566",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      width: 5,
                      isColor: true,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "0055 444 77147",
                          secondText: "Number or E-ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: "B2SG28",
                          secondText: "Booking code",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      width: 5,
                      isColor: true,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa.jpg",
                                  scale: 40,
                                ),
                                Text(
                                  " *** 2462",
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              "Payment method",
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: "\$249.99",
                          secondText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              /**Bar code */
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      AppLayout.getHeight(21),
                    ),
                    bottomRight: Radius.circular(AppLayout.getHeight(15)),
                  ),
                ),
                margin: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                  right: AppLayout.getHeight(15),
                ),
                padding: EdgeInsets.only(
                    top: AppLayout.getHeight(15),
                    bottom: AppLayout.getHeight(15)),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(20),
                    vertical: AppLayout.getHeight(20),
                  ),
                  child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(15)),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https://githup.com/martinovo',
                        drawText: false,
                        color: Styles.textColor,
                        height: 70,
                      )),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: SticketView(
                  tickets: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
