import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputCurrentMeter extends StatefulWidget {
  const InputCurrentMeter({Key? key}) : super(key: key);

  @override
  State<InputCurrentMeter> createState() => _InputCurrentMeterState();
}

class _InputCurrentMeterState extends State<InputCurrentMeter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1D3A71),
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
              color: const Color(0xff1D3A71),
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
                        const SizedBox(
                          width: 12,
                        ),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Nama Customer",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Anis Humanisa ( Rt 03 )",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "ID Pelanggan",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "ID09210921",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "No Telp",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "0821980239023",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 28,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Wilayah",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "RT 03",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Sumber",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Danau",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Terdaftar",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "28 Mei 2022",
                                  style: TextStyle(
                                      fontSize: 12,
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
            const SizedBox(
              height: 16,
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
              ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
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
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff1D3A71)),
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
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
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
