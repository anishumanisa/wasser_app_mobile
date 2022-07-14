import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/core/utils/number_format.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/payment_list/repository/payment_list_repository.dart';
import 'package:wasser_app/ui/pages/payment_list/view_model/payment_list_view_model.dart';

class PaymentListPage extends StatefulWidget {
  const PaymentListPage({Key? key, required this.userId}) : super(key: key);

  final String userId;
  @override
  _PaymentListPageState createState() => _PaymentListPageState();
}

class _PaymentListPageState extends State<PaymentListPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView<PaymentListViewModel>(
      key: const ValueKey('payment-detail-view'),
      vmBuilder: (context) => PaymentListViewModel(
          paymentListRepository: PaymentListRepository(),
          userId: widget.userId),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, PaymentListViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorAccentPrimary,
        title: const Text("Payment Lists"),
      ),
      body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                padding: EdgeInsets.only(
                    right: 16.w, left: 16.w, top: 16.w, bottom: 20.w),
                decoration: BoxDecoration(
                    color: colorAccentPrimary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(28.r),
                        bottomRight: Radius.circular(28.r))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(builder: (context) {
                      var userData = context.select(
                          (PaymentListViewModel vm) => vm.paymentList.data);

                      return Container(
                        height: 120.w,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: Colors.white24)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 12.w,
                            ),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Nama Customer",
                                      style: TextStyle(
                                          fontSize: 12.w,
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      "${userData?.name}",
                                      style: TextStyle(
                                          fontSize: 12.w,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 6.w,
                                    ),
                                    Text(
                                      "ID Pelanggan",
                                      style: TextStyle(
                                          fontSize: 12.w,
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      userData?.noPelanggan.toString() ?? '-',
                                      style: TextStyle(
                                          fontSize: 12.w,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 6.w,
                                    ),
                                    Text(
                                      "No Telp",
                                      style: TextStyle(
                                          fontSize: 12.w,
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      userData?.noTelp ?? '-',
                                      style: TextStyle(
                                          fontSize: 12.w,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 28.w,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Wilayah",
                                      style: TextStyle(
                                          fontSize: 12.w,
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      userData?.wilayah?.namaWilayah ?? '-',
                                      style: TextStyle(
                                          fontSize: 12.w,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 6.w,
                                    ),
                                    Text(
                                      "Terdaftar",
                                      style: TextStyle(
                                          fontSize: 12.w,
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      '-',
                                      style: TextStyle(
                                          fontSize: 12.w,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 6.w,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontSize: 12.w,
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      '',
                                      style: TextStyle(
                                          fontSize: 12.w,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
                  ],
                ),
              ),
              Builder(builder: (context) {
                var data = context
                    .select((PaymentListViewModel vm) => vm.paymentList.data);
                if ((data?.pembayaran ?? []).isEmpty) {
                  return Container(
                    margin: EdgeInsets.only(top: 48.w),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/icons/ic_resume.png',
                          width: 80.w,
                          height: 80.w,
                        ),
                        SizedBox(
                          height: 16.w,
                        ),
                        const Text("Tagihan nya masih kosong nih!! :)")
                      ],
                    ),
                  );
                }
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data?.pembayaran?.length,
                    itemBuilder: (context, index) {
                      var item = data?.pembayaran?[index];

                      var _tagihanBulan =
                          DateTime.parse(item?.tagihanBulan ?? '');
                      var month = DateFormat.LLLL().format(_tagihanBulan);

                      return Container(
                        margin: EdgeInsets.only(top: 16.w),
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 14.w),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 1,
                                spreadRadius: 1,
                                offset: const Offset(0, 1),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.r)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/icons/${data?.avatar}",
                                      height: 24.w,
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data?.name ?? '-',
                                          style: TextStyle(
                                              fontSize: 12.w,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 1.w,
                                        ),
                                        Text(
                                          month,
                                          style: TextStyle(
                                              fontSize: 12.w,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4.w),
                                      height: 20.w,
                                      decoration: BoxDecoration(
                                        color: colorAccentPrimary,
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                      ),
                                      child: Text(
                                        item?.status?.toUpperCase() ?? '-',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.w),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.w,
                            ),
                            _divider(),
                            SizedBox(
                              height: 10.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Meteran Awal",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.w),
                                ),
                                Text(
                                  (item?.meteranAwal ?? 0).toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.w),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Meteran Akhir",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.w),
                                ),
                                Text(
                                  (item?.meteranAkhir ?? 0).toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.w),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Kubikasi",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.w),
                                ),
                                Text(
                                  (item?.kubikasi ?? 0).toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.w),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Total : ",
                                      style: TextStyle(
                                          fontSize: 12.w,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      NumberFormatter.rupiah(
                                          item?.jumlahBayar ?? 0),
                                      style: TextStyle(
                                          fontSize: 12.w,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: item?.status == 'paid'
                                      ? null
                                      : () {
                                          Navigator.pushNamed(context,
                                                  RouteList.paymentConfirm,
                                                  arguments:
                                                      item?.id.toString())
                                              .whenComplete(() {
                                            viewModel.getPaymentList();
                                          });
                                        },
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 26.w),
                                    alignment: Alignment.center,
                                    height: 26.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6.r),
                                        border: Border.all(
                                          color: item?.status == 'paid'
                                              ? Colors.grey
                                              : colorAccentPrimary,
                                        )),
                                    child: Text(
                                      "Bayar".toUpperCase(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: item?.status == 'paid'
                                            ? Colors.grey
                                            : colorAccentPrimary,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              }),
            ],
          )),
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
