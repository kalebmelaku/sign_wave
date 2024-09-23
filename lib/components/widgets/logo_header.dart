import 'package:flutter/material.dart';
import 'package:signwave/constants/style.dart';

class LogoHeader extends StatefulWidget {
  const LogoHeader({super.key});

  @override
  _LogoHeaderState createState() => _LogoHeaderState();
}

class _LogoHeaderState extends State<LogoHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/signwave.png'),
        Text(
          "Pura",
          style: headerStyle(context),
        ),
        Text(
          "Sign Wave",
          style: headerStyle(context),
        ),
      ],
    );
  }
}
