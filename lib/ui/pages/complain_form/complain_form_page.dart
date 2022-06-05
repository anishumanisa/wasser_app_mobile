import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/shared/colors.dart';

class ComplainFormPage extends StatefulWidget {
  const ComplainFormPage({Key? key}) : super(key: key);

  @override
  State<ComplainFormPage> createState() => _ComplainFormPageState();
}

class _ComplainFormPageState extends State<ComplainFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("Tambah Complain"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
        physics: const BouncingScrollPhysics(),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              child: Image.asset(
                "assets/images/gallery.png",
                scale: 7.w,
              ),
              width: 100.w,
              height: 170.w,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Colors.grey)),
            ),
            SizedBox(
              height: 16.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Keluhan",
                  style: TextStyle(
                      color: colorPrimary,
                      fontSize: 18.w,
                      fontWeight: FontWeight.bold),
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
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.w, horizontal: 10.w),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2),
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
            SizedBox(
              height: 16.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Keterangan",
                  style: TextStyle(
                      color: colorPrimary,
                      fontSize: 18.w,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 6.w,
                ),
                Builder(builder: (context) {
                  return TextFormField(
                    maxLines: 7,
                    style: const TextStyle(color: Colors.black),
                    scrollPadding: EdgeInsets.only(bottom: 100.w),
                    decoration: InputDecoration(
                      hintText: "Catatan Teknisi",
                      hintStyle: const TextStyle(color: Colors.black54),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.w, horizontal: 10.w),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2),
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
                SizedBox(
                  height: 16.w,
                ),
                Builder(builder: (context) {
                  return SizedBox(
                    height: 48.w,
                    width: double.infinity,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(colorPrimary),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
            ),
          ],
        ),
      ),
    );
  }
}
