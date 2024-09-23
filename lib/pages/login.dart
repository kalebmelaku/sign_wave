
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:signwave/components/widgets/button.dart';
import 'package:signwave/components/widgets/input.dart';
import 'package:signwave/components/widgets/logo_header.dart';
import 'package:signwave/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signwave/constants/style.dart';
import 'package:signwave/functions/login.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  late Box box1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createBox();
  }

  void createBox() async {
    box1 = await Hive.openBox('userData');
    getData();
  }

  void getData() async {
    if (box1.get('email') != null) {
      email.text = box1.get('email');
      isChecked = true;
      setState(() {});
    }
    if (box1.get('pass') != null) {
      pass.text = box1.get('pass');
      isChecked = true;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LogoHeader(),
            SizedBox(
              height: 35.h,
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
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  child: Text(
                    "Forget Password",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: MyColors.primaryColor,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/forgetPass");
                  },
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomButton(
                text: "Login",
                onPressed: () {
                  login(email, pass, context, box1);
                }),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: minTextStyle(context),
                ),
                GestureDetector(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 16.sp, color: MyColors.primaryColor),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    }),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            )
          ],
        ),
      ),
    );
  }
}
