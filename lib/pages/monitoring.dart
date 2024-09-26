import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signwave/components/monitoring_box.dart';
import 'package:signwave/components/widgets/custom_bottom_navbar.dart';

class Monitoring extends StatefulWidget {
  const Monitoring({super.key});

  @override
  State<Monitoring> createState() => _MonitoringState();
}

class _MonitoringState extends State<Monitoring> {
  final int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Real Time Data"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Device Id: ",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Text(
                    "Port Number: ",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Text(
                    "Model: ",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const MonitoringBox(
                icon: Icons.solar_power_outlined,
                data: [
                  'Voltage: 0000.00V',
                  'Current: 0000.00A',
                  'Power: 0000.00W',
                  'Solar Status: Low Voltage'
                ],
                route: '/solar_panel_data',
              ),
              SizedBox(
                height: 10.h,
              ),
              const MonitoringBox(
                icon: Icons.battery_full_sharp,
                data: [
                  'Voltage: 0000.00V',
                  'Current: 0000.00A',
                  'Power: 0000.00W',
                  'Battery Temp: 25.0 C'
                ],
                route: '/battery_data',
              ),
              SizedBox(
                height: 10.h,
              ),
              const MonitoringBox(
                icon: Icons.lightbulb_outlined,
                data: [
                  'Voltage: 0000.00V',
                  'Current: 0000.00A',
                  'Power: 0000.00W',
                  'Load Status: OFF'
                ],
                route: '/load_data',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
