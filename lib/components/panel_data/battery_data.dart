import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signwave/components/panel_boxes.dart';
import 'package:signwave/constants/colors.dart';

import '../widgets/custom_bottom_navbar.dart';

class BatteryData extends StatefulWidget {
  const BatteryData({super.key});

  @override
  State<BatteryData> createState() => _BatteryDataState();
}

class _BatteryDataState extends State<BatteryData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Battery Data"),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Battery Rated Voltage (A14)"),
                      const Text("0000.00V"),
                      Row(
                        children: [
                          const Text("50%"),
                          Icon(
                            Icons.battery_4_bar,
                            color: MyColors.primaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const PanelBoxes(
                    title: "Battery Real Time Data",
                    data: [
                      {
                        "name": "Battery Current (A4)",
                        "value": "0000.00A",
                      },
                      {
                        "name": "Battery Voltage (A3)",
                        "value": "0000.00V",
                      },
                      {
                        "name": "Battery Max Voltage",
                        "value": "0000.00V",
                      },
                      {
                        "name": "Battery Min Voltage",
                        "value": "0000.00V",
                      },
                      {
                        "name": "Battery Temperature (A11)",
                        "value": "0000.00^C",
                      },
                      {
                        "name": "Controller Temperature (A11)",
                        "value": "0000.00^C",
                      },
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const PanelBoxes(
                    title: "Battery Status",
                    data: [
                      {
                        "name": "Voltage Identification",
                        "value": "Normal",
                      },
                      {
                        "name": "Battery Inner Resistance",
                        "value": "Normal",
                      },
                      {
                        "name": "Over Temperature",
                        "value": "Normal",
                      },
                      {
                        "name": "Battery Voltage Status",
                        "value": "Normal",
                      },
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const PanelBoxes(
                    title: "Charging Equipment Status",
                    data: [
                      {
                        "name": "Input Voltage Status (D15-D14)",
                        "value": "Normal",
                      },
                      {
                        "name": "Charging MOSFET Shorted (D13)",
                        "value": "NO",
                      },
                      {
                        "name": "Charging /Anti reverse MOSFET open (D12)",
                        "value": "YES",
                      },
                      {
                        "name": "Charging /Anti reverse MOSFET shorted (D11)",
                        "value": "NO",
                      },
                      {
                        "name": "Input Over Current D10",
                        "value": "NO",
                      },
                      {
                        "name": "Load Over Current D9",
                        "value": "NO",
                      },
                      {
                        "name": "Load Short Circuited D8",
                        "value": "NO",
                      },
                      {
                        "name": "Load MOSFET short Circuited D7",
                        "value": "NO",
                      },
                      {
                        "name": "Di equilibrium three circuit D6",
                        "value": "NO",
                      },
                      {
                        "name": "PV Short Circuited D4",
                        "value": "NO",
                      },
                      {
                        "name": "Discharging status D3-D2",
                        "value": "No Charging",
                      },
                      {
                        "name": "Charging equipment Status D1",
                        "value": "Normal",
                      },
                      {
                        "name": "Charging Equipment D0",
                        "value": "Running",
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
