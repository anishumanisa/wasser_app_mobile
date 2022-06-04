import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ComplainPage extends StatefulWidget {
  const ComplainPage({Key? key}) : super(key: key);

  @override
  _ComplainPageState createState() => _ComplainPageState();
}

class _ComplainPageState extends State<ComplainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1BAB87),
      appBar: AppBar(
        title: Text("Complain"),
        backgroundColor: Color(0xff1D3A71),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        physics: BouncingScrollPhysics(),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "Overview",
                      style: TextStyle(color: Color(0xff1BAB87)),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      children: [
                        Text(
                          "Month",
                          style: TextStyle(
                              color: Color(0xff1BAB87),
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
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              width: 20,
              //  height: 300,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 2,
                      spreadRadius: 1,
                      offset: Offset(0, 1),
                    ),
                  ],
                  color: Color(0xff1BAB87),
                  borderRadius: BorderRadius.circular(7)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "Total Done ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "47",
                              style: TextStyle(
                                  color: Color(0xff1BAB87),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          children: [
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
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      LinearProgressIndicator(
                        minHeight: 5,
                        backgroundColor: Colors.white70,
                        value: 0.7,
                        color: Color(0xff1D3A71),
                        semanticsLabel: 'Linear progress indicator',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "27 Done",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white70,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Divider(
                    color: Colors.grey.shade200,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          children: [
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
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      LinearProgressIndicator(
                        minHeight: 5,
                        backgroundColor: Colors.white70,
                        value: 0.4,
                        color: Color(0xff1D3A71),
                        semanticsLabel: 'Linear progress indicator',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "27 Reject",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white70,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "New Complaint",
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff1D3A71),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 240.w,
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
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                color: Colors.grey.shade200,
                              ),
                              child: Image.asset(
                                "assets/images/fixing.png",
                                width: 250,
                                height: 180,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 250,
                                  height: 58,
                                  decoration: BoxDecoration(
                                      color: Color(0xff1D3A71),
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Keran Patah",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      // Spacer(),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 150, top: 7),
                                        child: Text(
                                          "Selengkapnya",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
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
