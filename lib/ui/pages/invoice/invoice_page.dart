import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/shared/colors.dart';

class InvoicePage extends StatefulWidget {
  const InvoicePage({Key? key}) : super(key: key);

  @override
  _InvoicePageState createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("Confirm Payment"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 16.w),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.grey.shade100,
                ),
                width: 350.w,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    SizedBox(height: 20.w),
                    Container(
                      width: 70.w,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(50.r)),
                      child: Image.asset(
                        "assets/images/logo.png",
                        scale: 15.w,
                      ),
                    ),
                    SizedBox(
                      height: 30.w,
                    ),
                    Divider(
                      height: 1.w,
                      thickness: 1,
                      color: Colors.grey.shade500,
                    ),
                    SizedBox(
                      height: 16.w,
                    ),
                    Row(
                      children: const [
                        Text("Total Bayar"),
                        Spacer(),
                        Text("Rp 197.000"),
                      ],
                    ),
                    SizedBox(
                      height: 26.w,
                    ),
                    Row(
                      children: const [
                        Text("Nama "),
                        Spacer(),
                        Text("Anis Humanisa "),
                      ],
                    ),
                    SizedBox(
                      height: 26.w,
                    ),
                    Row(
                      children: const [
                        Text("Nama Bank"),
                        Spacer(),
                        Text("BRI"),
                      ],
                    ),
                    SizedBox(
                      height: 26.w,
                    ),
                    Row(
                      children: const [
                        Text("Metode Pembayaran"),
                        Spacer(),
                        Text("Rp 8743984"),
                      ],
                    ),
                    SizedBox(
                      height: 26.w,
                    ),
                    Row(
                      children: const [
                        Text("Tanggal Transaksi"),
                        Spacer(),
                        Text("Rp 8743984"),
                      ],
                    ),
                    SizedBox(
                      height: 26.w,
                    ),
                    Row(
                      children: const [
                        Text("ID  Transaksi"),
                        Spacer(),
                        Text("Rp 8743984"),
                      ],
                    ),
                    SizedBox(
                      height: 26.w,
                    ),
                    Row(
                      children: [
                        const Text("Status"),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 2.w),
                          width: 85.w,
                          decoration: BoxDecoration(
                              color: colorAccentPrimary,
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Text(
                            "Sudah Dibayar",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10.w),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.w,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.w),
                child: Text(
                  "Download Invoice",
                  style: TextStyle(
                      fontSize: 14.w,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                height: 44.w,
                decoration: BoxDecoration(
                    color: colorAccentPrimary,
                    borderRadius: BorderRadius.circular(50.r)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
