import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signwave/constants/colors.dart';
import 'package:signwave/constants/style.dart';

class ItemBox extends StatefulWidget {
  final String text;
  final String route;
  final IconData icon;
  final IconData secondIcon;
  const ItemBox(
      {super.key,
      required this.text,
      required this.route,
      required this.icon,
      required this.secondIcon});

  @override
  State<ItemBox> createState() => _ItemBoxState();
}

class _ItemBoxState extends State<ItemBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, widget.route);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: MyColors.secondaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    widget.icon,
                    size: 50,
                  ),
                  Icon(
                    widget.secondIcon,
                    size: 50,
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      widget.text,
                      style: headerStyle(context),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
