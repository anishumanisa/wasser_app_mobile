import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WilayahBottomSheetHeader extends StatefulWidget {
  const WilayahBottomSheetHeader({Key? key}) : super(key: key);

  @override
  State<WilayahBottomSheetHeader> createState() =>
      _WilayahBottomSheetHeaderState();
}

class _WilayahBottomSheetHeaderState extends State<WilayahBottomSheetHeader> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        height: 70.w,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.w),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.close,
                      size: 24.w,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Text(
                    "Wilayah",
                    style: TextStyle(fontSize: 16.w, color: Colors.black),
                  )
                ],
              ),
            ),
            Divider(
              height: 1.w,
              thickness: 0.8,
              color: Colors.black26,
            )
          ],
        ),
      ),
    );
  }
}
