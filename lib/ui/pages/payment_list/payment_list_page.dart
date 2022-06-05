import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/shared/colors.dart';

class PaymentListPage extends StatefulWidget {
  const PaymentListPage({Key? key}) : super(key: key);

  @override
  _PaymentListPageState createState() => _PaymentListPageState();
}

class _PaymentListPageState extends State<PaymentListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorAccentPrimary,
        title: const Text("Payment List"),
      ),
      body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                padding: EdgeInsets.only(
                    right: 16.w, left: 16.w, top: 16.w, bottom: 20.w),
                decoration: BoxDecoration(
                    color: colorAccentPrimary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(28.r),
                        bottomRight: Radius.circular(28.r))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120.w,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Colors.white24)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 12.w,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Nama Customer",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Anis Humanisa ( Rt 03 )",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 6.w,
                                  ),
                                  Text(
                                    "ID Pelanggan",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "ID09210921",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 6.w,
                                  ),
                                  Text(
                                    "No Telp",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "0821980239023",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 28.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Wilayah",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "RT 03",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 6.w,
                                  ),
                                  Text(
                                    "Sumber",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Danau",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 6.w,
                                  ),
                                  Text(
                                    "Terdaftar",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "28 Mei 2022",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 16.w),
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 14.w),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: const Offset(0, 1),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6.r)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/ic_profile.png",
                                    scale: 3.2.w,
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Tedi Alamsyah",
                                        style: TextStyle(
                                            fontSize: 12.w,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 1.w,
                                      ),
                                      Text(
                                        "Maret 2022",
                                        style: TextStyle(
                                            fontSize: 12.w, color: Colors.grey),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.w),
                                    height: 20.w,
                                    decoration: BoxDecoration(
                                      color: colorAccentPrimary,
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                    child: Text(
                                      "Berhasil",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 11.w),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.w,
                          ),
                          _divider(),
                          SizedBox(
                            height: 10.w,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Meteran Awal",
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                              Text(
                                "100",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4.w,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Meteran Akhir",
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                              Text(
                                "100",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4.w,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Kubikasi",
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                              Text(
                                "100",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16.w,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total : ",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Rp 100.000",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RouteList.paymentConfirm);
                                },
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 26.w),
                                  alignment: Alignment.center,
                                  height: 26.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6.r),
                                      border: Border.all(
                                        color: colorAccentPrimary,
                                      )),
                                  child: const Text(
                                    "Bayar",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: colorAccentPrimary,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }

  Widget _divider() {
    return Divider(
      height: 1.w,
      thickness: 0.5,
      color: Colors.black12,
    );
  }
}
