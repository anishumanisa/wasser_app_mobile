import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/shared/colors.dart';

class InputMeterPage extends StatefulWidget {
  const InputMeterPage({Key? key}) : super(key: key);

  @override
  State<InputMeterPage> createState() => _InputMeterPageState();
}

class _InputMeterPageState extends State<InputMeterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("Input Pemakaian"),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              color: colorPrimary,
              padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.w),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
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
            SizedBox(
              height: 16.w,
            ),
            Container(
              margin: EdgeInsets.only(right: 16.w, left: 16.w),
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 2,
                  spreadRadius: 1,
                  offset: const Offset(0, 1),
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(8.r)),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Meteran Terakhir",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.w,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8.w,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        scrollPadding: EdgeInsets.only(bottom: 100.w),
                        decoration: InputDecoration(
                          hintText: "ID",
                          hintStyle: const TextStyle(color: Colors.black54),
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.w, horizontal: 10.w),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(
                                color: Colors.black26, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(
                                color: Colors.black26, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(
                                color: Colors.black26, width: 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Meteran Sekarang",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.w,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8.w,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        scrollPadding: EdgeInsets.only(bottom: 100.w),
                        decoration: InputDecoration(
                          hintText: "ID",
                          hintStyle: const TextStyle(color: Colors.black54),
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.w, horizontal: 10.w),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(
                                color: Colors.black26, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(
                                color: Colors.black26, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(
                                color: Colors.black26, width: 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kubikasi",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.w,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8.w,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        scrollPadding: EdgeInsets.only(bottom: 100.w),
                        decoration: InputDecoration(
                          hintText: "ID",
                          hintStyle: const TextStyle(color: Colors.black54),
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.w, horizontal: 10.w),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(
                                color: Colors.black26, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(
                                color: Colors.black26, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(
                                color: Colors.black26, width: 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.w,
                  ),
                  SizedBox(
                    height: 38.w,
                    width: double.infinity,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(colorPrimary),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Simpan".toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.w,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.w,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
