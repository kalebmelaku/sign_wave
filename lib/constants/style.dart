import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle headerStyle(BuildContext context) {
  return TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.onSurface,
  );
}
TextStyle boxTextStyle(BuildContext context) {
  return TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}

TextStyle minTextStyle(BuildContext context) {
  return TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.onSurface,
  );
}
TextStyle bodyText(BuildContext context) {
  return TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
  );
}

TextStyle inputStyle(BuildContext context) {
  return TextStyle(
    fontSize: 14.sp,
    color: Theme.of(context).colorScheme.onSurface,
  );
}

TextStyle buttonStyle(BuildContext context) {
  return TextStyle(
    fontSize: 18.sp,
    color: Colors.white
    // color: Theme.of(context).colorScheme.onInverseSurface,
  );
}
TextStyle tertiaryButtonStyle(BuildContext context) {
  return TextStyle(
    fontSize: 18.sp,
    color: Colors.black
    // color: Theme.of(context).colorScheme.onInverseSurface,
  );
}
