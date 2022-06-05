import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/shared/colors.dart';

class ComplainListPage extends StatefulWidget {
  const ComplainListPage({Key? key}) : super(key: key);

  @override
  _ComplainListPageState createState() => _ComplainListPageState();
}

class _ComplainListPageState extends State<ComplainListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("List Complain"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10.w, horizontal: 16.w),
        physics: const BouncingScrollPhysics(),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
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
                    borderRadius: BorderRadius.circular(8.w),
                    borderSide: BorderSide(color: Colors.grey, width: 1.5.w),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: colorPrimary, width: 1.5.w),
                  ),
                ),
              );
            }),
            SizedBox(
              height: 16.w,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        scale: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Anis Humanisa",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: colorPrimary),
                          ),
                          Text(
                            "24 April 2022",
                            style: TextStyle(
                              fontSize: 11.w,
                              color: colorPrimary,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Sudah Diproses",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.w,
                              fontWeight: FontWeight.bold),
                        ),
                        height: 20.w,
                        width: 95.w,
                        decoration: BoxDecoration(
                            color: colorAccentPrimary,
                            borderRadius: BorderRadius.circular(5.r)),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0.2,
                    color: Colors.black,
                  ),
                  Text(
                    "Judul Komplenan",
                    style: TextStyle(
                        color: colorPrimary,
                        fontSize: 16.w,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.w,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce metus lacus, fermentum eget commodo eu,"
                    " consequat sed arcu. Suspendisse ut magna eleifend nulla posuere finibus.",
                    style: TextStyle(color: colorPrimary),
                  ),
                  SizedBox(
                    height: 14.w,
                  ),
                  Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Selengkapnya",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.w,
                            fontStyle: FontStyle.italic),
                      ))
                ],
              ),
              height: 235.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Colors.white70,
                  border: Border.all(color: colorPrimary)),
            ),
            SizedBox(
              height: 16.w,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        scale: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Anis Humanisa",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: colorPrimary),
                          ),
                          Text(
                            "24 April 2022",
                            style: TextStyle(
                              fontSize: 11.w,
                              color: colorPrimary,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Sudah Diproses",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.w,
                              fontWeight: FontWeight.bold),
                        ),
                        height: 20.w,
                        width: 95.w,
                        decoration: BoxDecoration(
                            color: colorAccentPrimary,
                            borderRadius: BorderRadius.circular(5.r)),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0.2,
                    color: Colors.black,
                  ),
                  Text(
                    "Judul Komplenan",
                    style: TextStyle(
                        color: colorPrimary,
                        fontSize: 16.w,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.w,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce metus lacus, fermentum eget commodo eu,"
                    " consequat sed arcu. Suspendisse ut magna eleifend nulla posuere finibus.",
                    style: TextStyle(color: colorPrimary),
                  ),
                  SizedBox(
                    height: 14.w,
                  ),
                  Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Selengkapnya",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.w,
                            fontStyle: FontStyle.italic),
                      ))
                ],
              ),
              height: 235.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Colors.white70,
                  border: Border.all(color: colorPrimary)),
            ),
            SizedBox(
              height: 16.w,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        scale: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Anis Humanisa",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: colorPrimary),
                          ),
                          Text(
                            "24 April 2022",
                            style: TextStyle(
                              fontSize: 11.w,
                              color: colorPrimary,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Sudah Diproses",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.w,
                              fontWeight: FontWeight.bold),
                        ),
                        height: 20.w,
                        width: 95.w,
                        decoration: BoxDecoration(
                            color: colorAccentPrimary,
                            borderRadius: BorderRadius.circular(5.r)),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0.2,
                    color: Colors.black,
                  ),
                  Text(
                    "Judul Komplenan",
                    style: TextStyle(
                        color: colorPrimary,
                        fontSize: 16.w,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.w,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce metus lacus, fermentum eget commodo eu,"
                    " consequat sed arcu. Suspendisse ut magna eleifend nulla posuere finibus.",
                    style: TextStyle(color: colorPrimary),
                  ),
                  SizedBox(
                    height: 14.w,
                  ),
                  Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Selengkapnya",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.w,
                            fontStyle: FontStyle.italic),
                      ))
                ],
              ),
              height: 235.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Colors.white70,
                  border: Border.all(color: const Color(0xff1D3A71))),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
