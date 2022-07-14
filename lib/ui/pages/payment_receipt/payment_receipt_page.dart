import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/core/utils/number_format.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/payment_confirm/model/create_transaction_response.dart';

class PaymentReceiptPage extends StatefulWidget {
  const PaymentReceiptPage({Key? key, required this.transactionData})
      : super(key: key);

  final TransactionData transactionData;
  @override
  State<PaymentReceiptPage> createState() => _PaymentReceiptPageState();
}

class _PaymentReceiptPageState extends State<PaymentReceiptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("Payment Receipt"),
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
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 2.r,
                      spreadRadius: 1,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                width: 350.w,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    SizedBox(height: 20.w),
                    SizedBox(
                      width: 70.w,
                      child: Image.asset(
                        "assets/icons/${widget.transactionData.user?.avatar}",
                      ),
                    ),
                    SizedBox(
                      height: 22.w,
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
                      children: [
                        Text(
                          "NO INVOICE",
                          style: TextStyle(
                              fontSize: 13.w, fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        Text(
                          widget.transactionData.noInvoice?.substring(0, 5) ??
                              '',
                          style: TextStyle(
                              fontSize: 13.w, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26.w,
                    ),
                    Row(
                      children: [
                        Text(
                          "NAMA",
                          style: TextStyle(
                              fontSize: 13.w, fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        Text(
                          widget.transactionData.user?.name?.toUpperCase() ??
                              '',
                          style: TextStyle(
                              fontSize: 13.w, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26.w,
                    ),
                    Row(
                      children: [
                        Text(
                          "TOTAL BAYAR",
                          style: TextStyle(
                              fontSize: 13.w, fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        Text(
                          NumberFormatter.rupiah(
                              widget.transactionData.total ?? 0),
                          style: TextStyle(
                              fontSize: 13.w, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26.w,
                    ),
                    Row(
                      children: [
                        Text(
                          "METODE PEMBAYARAN",
                          style: TextStyle(
                              fontSize: 13.w, fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        Text(
                          (widget.transactionData.method == 'manual'
                                  ? "Manual"
                                  : "Bank Transfer")
                              .toUpperCase(),
                          style: TextStyle(
                              fontSize: 13.w, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26.w,
                    ),
                    Builder(builder: (context) {
                      var _createDate = DateTime.parse(
                          widget.transactionData.createdAt ?? '');
                      var date = DateFormat.yMMMEd().format(_createDate);
                      return Row(
                        children: [
                          Text(
                            "TANGGAL TRANSAKSI",
                            style: TextStyle(
                                fontSize: 13.w, fontWeight: FontWeight.w400),
                          ),
                          const Spacer(),
                          Text(
                            date.toUpperCase(),
                            style: TextStyle(
                                fontSize: 13.w, fontWeight: FontWeight.w600),
                          ),
                        ],
                      );
                    }),
                    SizedBox(
                      height: 26.w,
                    ),
                    Row(
                      children: [
                        Text(
                          "STATUS",
                          style: TextStyle(
                              fontSize: 13.w, fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.w, vertical: 4.w),
                          width: 85.w,
                          decoration: BoxDecoration(
                              color: colorAccentPrimary,
                              borderRadius: BorderRadius.circular(4.r)),
                          child: Text(
                            "SUDAH BAYAR",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 10.w, color: Colors.white),
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
                height: 16.w,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.popUntil(
                      context, ModalRoute.withName(RouteList.main));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 14.w),
                  child: Text(
                    "OKE",
                    style: TextStyle(
                        fontSize: 14.w,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                      color: colorPrimary,
                      borderRadius: BorderRadius.circular(8.r)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
