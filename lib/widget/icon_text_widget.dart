import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../until/app_layout.dart';
import '../until/app_style.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(12), vertical: AppLayout.getWidth(12)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
              color: Colors.white ,
            ),
            child: Row(
              children: [
                Icon(icon, color: const Color(0xFFBFC2DF),),
                Gap(AppLayout.getWidth(10)),
                Text(
                  text,
                  style: Styles.textStyle,
                ),
              ],
            ),
          );
  }
}