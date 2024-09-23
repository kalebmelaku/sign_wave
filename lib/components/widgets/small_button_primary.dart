import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signwave/constants/colors.dart';
import 'package:signwave/constants/style.dart';

class SmallButtonPrimary extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SmallButtonPrimary({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      // minWidth: double.infinity,
      height: 25.h,
      onPressed: () {
        HapticFeedback.vibrate();
        onPressed();
      },
      color: MyColors.primaryColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        text,
        style: buttonStyle(context), // Assuming you have headerStyle defined
      ),
    );
  }
}
