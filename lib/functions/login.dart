import 'package:flutter/material.dart';
import 'package:signwave/constants/url.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:signwave/pages/home.dart';

void login(email, pass, context, box1) async {
  if (email.text == "") {
    Fluttertoast.showToast(
        msg: "Email cannot be empty",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
    return;
  }
  if (pass.text == "") {
    Fluttertoast.showToast(
        msg: "Password cannot be empty",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
    return;
  }
  box1.put('WelPage_email', email.text);
  box1.put('WelPage_email', pass.text);

  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (builder) => const Home()));
  String uri = "${Url.url}/login";
  final Uri url = Uri.parse(uri);
  Map userData = {
    'email': email.text,
    'password': pass.text,
  };

  // http.Response response = await http.post(url, body: userData);

  // var data = jsonDecode(response.body);
  //after successful login, save user data in hive DB.
  // if (data['success'] == 1) {
  //   box1.put('WelPage_name', data['name']);
  //   box1.put('WelPage_email', data['email']);
  //   box1.put('WelPage_phone', data['phone']);
  //   box1.put('isLogged', true);
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (builder) => const Controller()));
  // }
}
