import 'package:flutter/material.dart';

import '../until/app_layout.dart';
import '../until/app_style.dart';

class AppTicketTaps extends StatelessWidget {
  final String firstTapText, secondTapText;
  const AppTicketTaps({super.key, required this.firstTapText, required this.secondTapText});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(50))),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  firstTapText,
                  style: Styles.headLineStyle3,
                ),
              ),
            ),
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getHeight(50))),
                color: Colors.transparent,
              ),
              child: Center(
                child: Text(
                  secondTapText,
                  style: Styles.headLineStyle3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
