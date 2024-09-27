import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:signwave/constants/colors.dart';
import 'package:signwave/constants/style.dart';

class PanelBoxes extends StatelessWidget {
  final String title;
  final List<Map<String, String>> data;
  const PanelBoxes({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: MyColors.secondaryColor,
            ),
            child: Center(
                child: Text(
              title,
              style: bodyText(context),
            )),
          ),
          ...data.map((item) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(item['name']!),
                  Text(item['value']!),
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
