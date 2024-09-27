
import 'package:flutter/material.dart';

  void logout(box1, context) async {
    box1?.put('isLogged', false);
    // box1?.delete('WelPage_name');
    // box1?.delete('WelPage_email');
    // box1?.delete('WelPage_phone');
    Navigator.pushNamed(context, '/login');
  }
