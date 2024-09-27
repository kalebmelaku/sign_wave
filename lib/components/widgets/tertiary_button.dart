import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signwave/constants/style.dart';

class TertiaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const TertiaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 45.h,
      onPressed: () {
        HapticFeedback.vibrate();
        onPressed();
      },
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: tertiaryButtonStyle(
                context), // Assuming you have headerStyle defined
          ),
          const Icon(Icons.arrow_forward_ios_outlined)
        ],
      ),
    );
  }
}
