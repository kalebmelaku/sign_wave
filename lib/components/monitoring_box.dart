import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signwave/constants/colors.dart';
import 'package:signwave/constants/style.dart';

class MonitoringBox extends StatefulWidget {
  final List<String> data;
  final IconData icon;
  final String route;
  const MonitoringBox(
      {super.key, required this.data, required this.icon, required this.route});

  @override
  State<MonitoringBox> createState() => _MonitoringBoxState();
}

class _MonitoringBoxState extends State<MonitoringBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: MyColors.secondaryColor),
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  widget.icon,
                  size: 40,
                  color: Colors.white,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...widget.data.map((item) => Text(
                            item,
                            style: bodyText(context),
                          ))
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 40,
                  color: Colors.white,
                )
              ],
            )),
      ),
    );
  }
}
