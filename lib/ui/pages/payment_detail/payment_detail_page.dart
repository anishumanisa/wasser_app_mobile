import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/shared/colors.dart';

class PaymentDetailPage extends StatefulWidget {
  const PaymentDetailPage({Key? key}) : super(key: key);

  @override
  _PaymentDetailPageState createState() => _PaymentDetailPageState();
}

class _PaymentDetailPageState extends State<PaymentDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 2,
                        spreadRadius: 1,
                        offset: Offset(0, 1),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.note,
                              color: colorPrimary,
                              size: 28,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Meteran Awal",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                          ],
                        ),
                        Text("100",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16)),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.note,
                              color: colorPrimary,
                              size: 28,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Meteran Akhir",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                          ],
                        ),
                        Text("180",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16)),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.content_paste_sharp,
                              color: colorPrimary,
                              size: 28,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Kubikasi",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                          ],
                        ),
                        Text("80",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16)),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.payments_outlined,
                              color: colorPrimary,
                              size: 28,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Total",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                          ],
                        ),
                        Text("Rp. 80.000",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16)),
                      ],
                    ),
                    SizedBox(
                      height: 16.w,
                    ),
                    _buildBottom(context)
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 12,
              );
            },
            itemCount: 3),
      ),
    );
  }

  Widget _buildBottom(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Builder(builder: (context) {
          return SizedBox(
            height: 38.w,
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
              child: const Text(
                "Bayar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          );
        }),
      ],
    );
  }
}
