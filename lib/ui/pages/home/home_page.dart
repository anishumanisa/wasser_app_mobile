import 'package:flutter/material.dart';
import 'package:wasser_app/ui/pages/home/widget/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        physics: BouncingScrollPhysics(),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Text(
                          "Welcome Back !",
                          style: TextStyle(color: Color(0xff1D3A71)),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Anis Humanisa",
                        style: TextStyle(
                          color: Color(0xff1D3A71),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    child: Icon(
                      Icons.notifications_active,
                      color: Color(0xff1D3A71),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSliders(),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Icon(
                                Icons.arrow_downward_sharp,
                                size: 18,
                              )),
                          SizedBox(
                            width: 14,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  "Income",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black54),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Rp 40.000",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Color(0xFF1BAB87),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Icon(
                                Icons.arrow_upward_sharp,
                                size: 18,
                              )),
                          SizedBox(
                            width: 14,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  "Outcome",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black54),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Rp. 70.000",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Icon(
                            Icons.access_alarm_rounded,
                            color: Color(0xFF1D3A71),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Payment",
                          style: TextStyle(color: Color(0xFF1D3A71)),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Icon(
                            Icons.access_alarm_rounded,
                            color: Color(0xFF1D3A71),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Payment",
                          style: TextStyle(color: Color(0xFF1D3A71)),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Icon(
                            Icons.access_alarm_rounded,
                            color: Color(0xFF1D3A71),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Payment",
                          style: TextStyle(color: Color(0xFF1D3A71)),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Icon(
                            Icons.access_alarm_rounded,
                            color: Color(0xFF1D3A71),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Payment",
                          style: TextStyle(color: Color(0xFF1D3A71)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
