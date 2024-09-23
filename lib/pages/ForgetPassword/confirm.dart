import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signwave/components/widgets/button.dart';
import 'package:signwave/components/widgets/logo_header.dart';
import 'package:signwave/constants/style.dart';

class Confirm extends StatefulWidget {
  const Confirm({super.key});

  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  TextEditingController email = TextEditingController();
  int seconds = 120;
  bool showResendButton = false; // State to manage button visibility
  Timer? timer; // Timer for countdown

  @override
  void initState() {
    super.initState();
    // Start the countdown timer when the page is initialized
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  void startTimer() {
    // Cancel any previous timers if present
    timer?.cancel();

    // Start a new timer
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      } else {
        setState(() {
          showResendButton = true; // Show the button when countdown reaches 0
        });
        timer.cancel(); // Cancel the timer when it reaches 0
      }
    });
  }

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
                      "Insert Confirmation Code",
                      style: headerStyle(context),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Pinput(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  length: 5,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  defaultPinTheme: PinTheme(
                      textStyle: headerStyle(context),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:
                              Theme.of(context).colorScheme.onInverseSurface),
                      padding: EdgeInsets.symmetric(vertical: 10.h)),
                  onCompleted: (value) => print(value),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't receive the code? ",
                      style: minTextStyle(context),
                    ),
                    Text(
                      "Resend in $seconds seconds",
                      style: minTextStyle(context),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                if (showResendButton) // Conditional rendering of the button
                  CustomButton(text: "Resend", onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
