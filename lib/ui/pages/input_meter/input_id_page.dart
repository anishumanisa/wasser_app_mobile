import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/shared/colors.dart';

class InputIdPage extends StatefulWidget {
  const InputIdPage({Key? key}) : super(key: key);

  @override
  State<InputIdPage> createState() => _InputIdPageState();
}

class _InputIdPageState extends State<InputIdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("Input Meter"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        physics: const ScrollPhysics(),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 16.w,
            ),
            Container(
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text(
                    "Input ID Pelanggan",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.w,
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
                        borderSide:
                            const BorderSide(color: Colors.black26, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide:
                            const BorderSide(color: Colors.black26, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide:
                            const BorderSide(color: Colors.black26, width: 1),
                      ),
                    ),
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
                        "Submit",
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
