import 'package:book_tickets/until/app_layout.dart';
import 'package:book_tickets/until/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/get_utils.dart';

import '../widget/column_layout.dart';
import '../widget/layout_builder_widget.dart';
import '../widget/thick_container.dart';

class SticketView extends StatelessWidget {
  final Map<String,dynamic> tickets;
  final bool? isColor;
  const SticketView({super.key, required this.tickets, this.isColor});
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid? 167 : 169),
      child: Container(
        margin:  EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Showing the blue part of the card/tickets
            Container(
              decoration: BoxDecoration(
                color: isColor == null?const Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21))),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        tickets['from']['code'],
                        style: isColor == null ?
                            Styles.headLineStyle3.copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(isColor: true,),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: const AppLayoutBuilderWidget(sections: 7,)
                            ),
                            Center(
                                child: Transform.rotate(
                              angle: 1.5,
                              child:  Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null? Colors.white : const Color(0xFF8ACCF7),
                              ),
                            )),
                          ],
                        ),
                      ),
                      const ThickContainer(isColor: true,),
                      Expanded(child: Container()),
                      Text(
                        tickets['to']['code'],
                        style: isColor == null ?
                            Styles.headLineStyle3.copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          tickets['from']['name'],
                          style: isColor == null ?
                            Styles.headLineStyle4.copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        tickets['flying_time'],
                        style:isColor == null ?
                            Styles.headLineStyle4.copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          tickets['to']['name'],
                          style: isColor == null ?
                            Styles.headLineStyle4.copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //showing the red part of the card/tickets
            Container(
              color: isColor == null? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:  isColor == null?Colors.grey.shade200 :Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(AppLayout.getHeight(10),),
                              bottomRight: Radius.circular(AppLayout.getHeight(10)))),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AppLayoutBuilderWidget(isColor: isColor,sections: 15, width: 5,)
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:  isColor == null?Colors.grey.shade200 :Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color:isColor == null? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null? 21 : 0),
                    bottomRight: Radius.circular(isColor == null? 21 : 0)),
              ),
              padding: const EdgeInsets.only(left: 16,top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: tickets['date'],
                        secondText: "Date",
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: tickets['departure_time'],
                        secondText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),                      
                       AppColumnLayout(
                        firstText: "${tickets['number']}",
                        secondText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),  
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
