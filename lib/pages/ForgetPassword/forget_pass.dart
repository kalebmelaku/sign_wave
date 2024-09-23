import 'package:flutter/material.dart';
import 'package:signwave/components/widgets/button.dart';
import 'package:signwave/components/widgets/logo_header.dart';
import 'package:signwave/components/widgets/input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signwave/constants/style.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  _ForgetPassState createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 SizedBox(
                  height: MediaQuery.of(context).size.height / 6,
                ),
                const LogoHeader(),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    Text(
                      "Confirm Your Email Address",
                      style: headerStyle(context),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                makeInput(
                    label: "Email",
                    context: context,
                    obscureText: false,
                    keyType: TextInputType.emailAddress,
                    controller: email,
                    icon: Icons.email),
                SizedBox(
                  height: 15.h,
                ),
                 CustomButton(text: "Submit", onPressed: (){}),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
