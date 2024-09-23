import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:signwave/components/widgets/drop_down.dart';
import 'package:signwave/functions/logout.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Box? box1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openBox();
  }

  void openBox() async {
    box1 = await Hive.openBox('userData');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const DropDown(),
                  IconButton(
                      onPressed: () {
                        logout(box1, context);
                      },
                      icon: const Icon(Icons.exit_to_app))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
