import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signwave/constants/colors.dart';
import 'package:signwave/constants/style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 35.h,
      onPressed: () {
        HapticFeedback.vibrate();
        onPressed();
      },
      color: MyColors.primaryColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: buttonStyle(context), // Assuming you have headerStyle defined
      ),
    );
  }
}
