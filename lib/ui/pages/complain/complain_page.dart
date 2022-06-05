import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/shared/colors.dart';

class ComplainPage extends StatefulWidget {
  const ComplainPage({Key? key}) : super(key: key);

  @override
  _ComplainPageState createState() => _ComplainPageState();
}

class _ComplainPageState extends State<ComplainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Complain"),
        backgroundColor: colorPrimary,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
        physics: const BouncingScrollPhysics(),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Row(
              children: [
                const Text(
                  "Overview",
                  style: TextStyle(color: colorPrimary),
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4.w, horizontal: 6.w),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(6.r)),
                  child: Row(
                    children: const [
                      Text(
                        "Month",
                        style: TextStyle(
                            color: colorAccentPrimary,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.w,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 20.w),
              width: 20.w,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 2,
                      spreadRadius: 1,
                      offset: const Offset(0, 1),
                    ),
                  ],
                  color: colorAccentPrimary,
                  borderRadius: BorderRadius.circular(7.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Total Done ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.w,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.w, horizontal: 5.w),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Text(
                              "47",
                              style: TextStyle(
                                  color: colorAccentPrimary,
                                  fontSize: 14.w,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 22.w,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Done",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Spacer(),
                          Text(
                            "16",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12.w,
                      ),
                      LinearProgressIndicator(
                        minHeight: 5.w,
                        backgroundColor: Colors.white70,
                        value: 0.7,
                        color: colorPrimary,
                        semanticsLabel: 'Linear progress indicator',
                      ),
                      SizedBox(
                        height: 8.w,
                      ),
                      Text(
                        "27 Done",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white70,
                            fontSize: 12.w),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6.w,
                  ),
                  Divider(
                    color: Colors.grey.shade200,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 8.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Reject",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Spacer(),
                          Text(
                            "16",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12.w,
                      ),
                      LinearProgressIndicator(
                        minHeight: 5.w,
                        backgroundColor: Colors.white70,
                        value: 0.4,
                        color: colorPrimary,
                        semanticsLabel: 'Linear progress indicator',
                      ),
                      SizedBox(
                        height: 8.w,
                      ),
                      Text(
                        "27 Reject",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white70,
                            fontSize: 12.w),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.w,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Complaint",
                  style: TextStyle(
                      fontSize: 16.w,
                      color: colorPrimary,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RouteList.complainList);
                  },
                  child: Text(
                    "Lihat Semua",
                    style: TextStyle(
                        fontSize: 12.w,
                        color: colorPrimary,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.w,
            ),
            SizedBox(
              height: 260.w,
              width: double.infinity,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) => Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 2,
                              spreadRadius: 1,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(right: 10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.r),
                                    topRight: Radius.circular(10.r)),
                                color: Colors.grey.shade200,
                              ),
                              child: Image.asset(
                                "assets/images/fixing.png",
                                width: 250.w,
                                height: 180.w,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 250.w,
                                  height: 58.w,
                                  decoration: BoxDecoration(
                                      color: colorPrimary,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10.r),
                                          bottomLeft: Radius.circular(10.r))),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8.w, horizontal: 16.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Keran Patah",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.w,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      // Spacer(),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 150.w, top: 7.w),
                                        child: Text(
                                          "Selengkapnya",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.w,
                                              fontStyle: FontStyle.italic),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
