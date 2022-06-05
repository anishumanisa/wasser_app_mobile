import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WaterBillPages extends StatefulWidget {
  const WaterBillPages({Key? key}) : super(key: key);

  @override
  _WaterBillPagesState createState() => _WaterBillPagesState();
}

class _WaterBillPagesState extends State<WaterBillPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 80.w, horizontal: 16.w),
        physics: const BouncingScrollPhysics(),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  width: 120.w,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(100.r)),
                  child: Image.asset(
                    "assets/images/drop.png",
                    scale: 7.w,
                  ),
                ),
                SizedBox(
                  height: 20.w,
                ),
                Text(
                  "Pay Water Bill",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25.w,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16.w,
                ),
                SizedBox(
                  width: 300.w,
                  child: const Text(
                    "Pay water bills safely, conveniently & easily."
                    "you can pay anytime and anywhere!",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                SizedBox(
                  height: 16.w,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey.shade200,
                ),
                SizedBox(
                  height: 16.w,
                ),
              ],
            ),
            Text(
              "Customer ID",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.w),
            ),
            SizedBox(
              height: 11.w,
            ),
            Container(
              width: 200.w,
              height: 50.w,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(5.r)),
            )
          ],
        ),
      ),
    );
  }
}
