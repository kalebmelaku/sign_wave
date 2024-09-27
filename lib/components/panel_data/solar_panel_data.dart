import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signwave/components/panel_boxes.dart';
import 'package:signwave/components/widgets/custom_bottom_navbar.dart';

class SolarPanelData extends StatefulWidget {
  const SolarPanelData({super.key});

  @override
  State<SolarPanelData> createState() => _SolarPanelDataState();
}

class _SolarPanelDataState extends State<SolarPanelData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Solar Panel Data"),
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
                        "name": "Solar Current (A4)",
                        "value": "0000.00A",
                      },
                      {
                        "name": "Solar Voltage (A3)",
                        "value": "0000.00V",
                      },
                      {
                        "name": "Solar Power (A5)",
                        "value": "0000.00W",
                      },
                      {
                        "name": "Solar Status (A16, Bit15-14 =01)",
                        "value": "Low Voltage",
                      },
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const PanelBoxes(
                    title: "Energy Generated Data",
                    data: [
                      {
                        "name": "Daily Energy Generated (A28)",
                        "value": "0000.00Kwh",
                      },
                      {
                        "name": "Monthly Energy Generated (A30)",
                        "value": "0000.00Kwh",
                      },
                      {
                        "name": "Annual Energy Generated (A32)",
                        "value": "0000.00Kwh",
                      },
                      {
                        "name": "Total Energy Generated (A34)",
                        "value": "0000.00Kwh",
                      },
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const PanelBoxes(
                    title: "Solar Panel Real Time Data",
                    data: [
                      {
                        "name": "Daily Energy Consumed (A20)",
                        "value": "0000.00Kwh",
                      },
                      {
                        "name": "Monthly Energy Consumed (A22)",
                        "value": "0000.00Kwh",
                      },
                      {
                        "name": "Annual Energy Consumed (A24)",
                        "value": "0000.00Kwh",
                      },
                      {
                        "name": "Total Energy Consumed (A26)",
                        "value": "0000.00Kwh",
                      },
                    ],
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
