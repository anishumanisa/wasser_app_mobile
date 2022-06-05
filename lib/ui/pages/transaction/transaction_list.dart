import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/shared/colors.dart';

class TransactionListPage extends StatefulWidget {
  const TransactionListPage({Key? key}) : super(key: key);

  @override
  _TransactionListPageState createState() => _TransactionListPageState();
}

class _TransactionListPageState extends State<TransactionListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("Transaction List"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.w,
                ),
                Row(
                  children: const [
                    Text(
                      "Maret 2022",
                      style: TextStyle(color: colorPrimary),
                    ),
                    Spacer(),
                    Text(
                      "Diperbaharui Hari Ini,19.50",
                      style: TextStyle(color: colorPrimary),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.w,
                ),
              ],
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          scale: 15.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Anis Humanisa - Rt 03",
                              style: TextStyle(
                                fontSize: 14.w,
                                fontWeight: FontWeight.bold,
                                color: colorPrimary,
                              ),
                            ),
                            SizedBox(
                              height: 6.w,
                            ),
                            Text(
                              "ID17839720",
                              style: TextStyle(
                                  fontSize: 12.w, color: Colors.black45),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.w, horizontal: 8.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: colorAccentPrimary,
                              ),
                              child: Text(
                                "Sudah Bayar",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10.w,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 6.w,
                            ),
                            Text(
                              "28 Mar 2022",
                              style: TextStyle(
                                  fontSize: 12.w, color: Colors.black45),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.shade200,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
