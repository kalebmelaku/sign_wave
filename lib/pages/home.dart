import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:signwave/components/box.dart';
import 'package:signwave/components/widgets/drop_down.dart';
import 'package:signwave/components/widgets/small_button_primary.dart';
import 'package:signwave/components/widgets/small_button_secondary.dart';
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
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: SmallButtonPrimary(text: "READ", onPressed: () {}),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      child:
                          SmallButtonSecondary(text: "WRITE", onPressed: () {}),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 columns
                    crossAxisSpacing: 25.0, // spacing between columns
                    mainAxisSpacing: 25.0, // spacing between rows
                  ),
                  children: const [
                    ItemBox(icon: Icons.access_time, text: "Real Time Monitoring", secondIcon: Icons.double_arrow_sharp, route: '/monitoring'),
                    ItemBox(icon: Icons.battery_3_bar, text: "Battery Setting", secondIcon: Icons.double_arrow_sharp, route: '/batterySetting'),
                    ItemBox(icon: Icons.settings, text: "Device Setting", secondIcon: Icons.double_arrow_sharp, route: '/deviceSetting'),
                    ItemBox(icon: Icons.lightbulb_outline_sharp, text: "Load Setting", secondIcon: Icons.double_arrow_sharp, route: '/loadSetting'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
