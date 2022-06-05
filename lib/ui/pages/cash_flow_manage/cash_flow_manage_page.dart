import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/shared/colors.dart';

class CashFlowManagePage extends StatefulWidget {
  const CashFlowManagePage({Key? key}) : super(key: key);

  @override
  _CashFlowManagePageState createState() => _CashFlowManagePageState();
}

class _CashFlowManagePageState extends State<CashFlowManagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        physics: const ScrollPhysics(),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.w),
              color: Colors.white54,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(context),
                  SizedBox(height: 16.w),
                  _buildMiddle(context),
                  SizedBox(height: 16.w),
                  _buildBottom(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Saldo Kas",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.w),
        ),
        SizedBox(
          height: 6.w,
        ),
        Text(
          "Hemat pangkal kaya :D",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12.w),
        ),
      ],
    );
  }

  Widget _buildMiddle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Tipe",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 6.w,
            ),
            Builder(builder: (context) {
              return TextFormField(
                style: const TextStyle(color: Colors.black),
                scrollPadding: EdgeInsets.only(bottom: 100.w),
                decoration: InputDecoration(
                  hintText: "Tipe",
                  hintStyle: const TextStyle(color: Colors.black54),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.w, horizontal: 10.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                ),
              );
            }),
          ],
        ),
        SizedBox(height: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Jumlah",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 6.w,
            ),
            Builder(builder: (context) {
              return TextFormField(
                style: const TextStyle(color: Colors.black),
                scrollPadding: EdgeInsets.only(bottom: 100.w),
                decoration: InputDecoration(
                  hintText: "Jumlah",
                  hintStyle: const TextStyle(color: Colors.black54),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.w, horizontal: 10.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                ),
              );
            }),
          ],
        ),
        SizedBox(height: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Keterangan",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 6.w,
            ),
            Builder(builder: (context) {
              return TextFormField(
                maxLines: 3,
                style: const TextStyle(color: Colors.black),
                scrollPadding: EdgeInsets.only(bottom: 100.w),
                decoration: InputDecoration(
                  hintText: "Keterangan",
                  hintStyle: const TextStyle(color: Colors.black54),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.w, horizontal: 10.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: Colors.grey, width: 2.w),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                ),
              );
            }),
          ],
        ),
      ],
    );
  }

  Widget _buildBottom(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Builder(builder: (context) {
          return SizedBox(
            height: 48.w,
            width: double.infinity,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(colorPrimary),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
              onPressed: () {
                FocusScope.of(context).unfocus();
              },
              child: Text(
                "Simpan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.w,
                    fontWeight: FontWeight.w600),
              ),
            ),
          );
        }),
      ],
    );
  }
}
