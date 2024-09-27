import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signwave/components/panel_boxes.dart';
import 'package:signwave/components/widgets/custom_bottom_navbar.dart';

class LoadData extends StatefulWidget {
  const LoadData({super.key});

  @override
  State<LoadData> createState() => _LoadDataState();
}

class _LoadDataState extends State<LoadData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Load Data"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  const PanelBoxes(
                    title: "Solar Panel Real Time Data",
                    data: [
                      {
                        "name": "Load Current (A4)",
                        "value": "0000.00A",
                      },
                      {
                        "name": "Load Voltage (A3)",
                        "value": "0000.00V",
                      },
                      {
                        "name": "Load Power",
                        "value": "0000.00W",
                      },
                      {
                        "name": "Load Status (A16, Bit15-14 =01)",
                        "value": "Low Voltage",
                      },
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(selectedIndex: 0),
    );
  }
}
