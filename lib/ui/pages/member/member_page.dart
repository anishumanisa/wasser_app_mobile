import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/shared/colors.dart';

class MemberPage extends StatefulWidget {
  const MemberPage({Key? key}) : super(key: key);

  @override
  _MemberPageState createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("List Member"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Builder(builder: (context) {
              return TextFormField(
                style: const TextStyle(color: Colors.black),
                scrollPadding: EdgeInsets.only(bottom: 100.w),
                decoration: InputDecoration(
                  hintText: "Cari Nama Pelanggan",
                  prefixIcon: const Icon(Icons.search),
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
            SizedBox(
              height: 12.w,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16.w),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/ic_profile.png",
                              scale: 2.w,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Anis Humanisa - Rt 03",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.w,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 4.w,
                                ),
                                Text(
                                  "ID1012012012",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.w,
                                      fontWeight: FontWeight.w200),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              height: 30.w,
                              width: 34.w,
                              decoration: BoxDecoration(
                                  color: colorPrimary,
                                  borderRadius: BorderRadius.circular(4.r),
                                  border: Border.all(color: Colors.black26)),
                              child: Icon(
                                Icons.visibility_sharp,
                                size: 15.w,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      _divider()
                    ],
                  );
                }),
          ],
        ),
      ),
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
