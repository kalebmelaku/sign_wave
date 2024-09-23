import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle headerStyle(BuildContext context) {
  return TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.onSurface,
  );
}

TextStyle minTextStyle(BuildContext context) {
  return TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.onSurface,
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
    // color: Theme.of(context).colorScheme.onInverseSurface,
  );
}
