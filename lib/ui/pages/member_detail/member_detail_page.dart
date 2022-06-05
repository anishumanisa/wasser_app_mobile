import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemberDetailPage extends StatefulWidget {
  const MemberDetailPage({Key? key}) : super(key: key);

  @override
  _MemberDetailPageState createState() => _MemberDetailPageState();
}

class _MemberDetailPageState extends State<MemberDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 20.w),
        physics: const BouncingScrollPhysics(),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90.w,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(50.r)),
                  child: Image.asset(
                    "assets/images/logo.png",
                  ),
                ),
                SizedBox(
                  height: 14.w,
                ),
                Column(
                  children: [
                    Text(
                      "Anis Humanisa",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.w),
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    const Text(
                      "F0012389",
                      style: TextStyle(color: Colors.black38),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50.w,
            ),
            Text(
              "Histori Pembayaran",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.w,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16.w,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 10.w),
              height: 65.w,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Pembayaran Bulan Maret",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.w,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Rp.97000",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Success",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.w,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 10.w),
              height: 65.w,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Pembayaran Bulan Maret",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.w,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Rp.97000",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Success",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
