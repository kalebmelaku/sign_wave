import 'package:flutter/material.dart';
import 'package:signwave/components/widgets/button.dart';
import 'package:signwave/components/widgets/logo_header.dart';
import 'package:signwave/components/widgets/input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signwave/constants/colors.dart';
import 'package:signwave/constants/style.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController confPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              const LogoHeader(),
              SizedBox(
                height: 25.h,
              ),
              makeInput(
                  label: "Username",
                  context: context,
                  obscureText: false,
                  keyType: TextInputType.text,
                  controller: userName,
                  icon: Icons.account_circle),
              SizedBox(
                height: 15.h,
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
              makeInput(
                  label: "Password",
                  context: context,
                  obscureText: true,
                  keyType: TextInputType.visiblePassword,
                  controller: pass,
                  icon: Icons.password),
              SizedBox(
                height: 15.h,
              ),
              makeInput(
                  label: "Confirm Password",
                  context: context,
                  obscureText: true,
                  keyType: TextInputType.visiblePassword,
                  controller: confPass,
                  icon: Icons.password),
              SizedBox(
                height: 25.h,
              ),
              CustomButton(text: "Sign Up", onPressed: () {}),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: minTextStyle(context),
                  ),
                  GestureDetector(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 16.sp, color: MyColors.primaryColor),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      }),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
