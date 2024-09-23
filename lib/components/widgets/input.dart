import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signwave/constants/style.dart';

Widget makeInput({label, obscureText, keyType, controller, error, icon, context}) {
  bool obscureText0 = obscureText;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      TextField(
        style: inputStyle(context),
        decoration: InputDecoration(
            hintText: label,
            filled: true,
            fillColor: Theme.of(context).colorScheme.onInverseSurface,
            contentPadding:
                EdgeInsets.symmetric(vertical: 11.h, horizontal: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
              
            ),
            suffixIcon: Icon(icon)),
        obscureText: obscureText0,
        controller: controller,
        keyboardType: keyType,
      ),
      if (error != null)
        Text(
          error,
          style: TextStyle(color: Colors.redAccent, fontSize: 13.sp),
        ),
    ],
  );
}
