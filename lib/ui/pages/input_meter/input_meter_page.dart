import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        backgroundColor: const Color(0xff1D3A71),
        title: const Text("Input Meter"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        physics: const ScrollPhysics(),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                  color: Color(0xff1D3A71),
                  borderRadius: BorderRadius.circular(6)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Input ID Pelanggan",
                    style: TextStyle(
                        color: Colors.white,
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
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff1BAB87)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Submit",
                        style: TextStyle(
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
