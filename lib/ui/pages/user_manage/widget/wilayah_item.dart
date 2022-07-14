import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/shared/colors.dart';

class WilayahItem extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final String title;

  const WilayahItem({
    Key? key,
    required this.isSelected,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var iconColor = isSelected ? colorPrimary : kNeutral600;
    var icon = isSelected
        ? Icons.radio_button_checked_outlined
        : Icons.radio_button_off_outlined;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 16.w),
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 4.w, right: 16.w, top: 2.w),
              child: Icon(
                icon,
                color: iconColor,
                size: 16.w,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 292.w,
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 14.w,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
