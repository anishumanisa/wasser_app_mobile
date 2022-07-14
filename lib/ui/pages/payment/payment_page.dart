import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/common/widgets/loading_state.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/payment/repository/payment_repository.dart';
import 'package:wasser_app/ui/pages/payment/view_model/payment_view_model.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView<PaymentViewModel>(
      key: const ValueKey('payment-view'),
      vmBuilder: (context) =>
          PaymentViewModel(paymentRepository: PaymentRepository()),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, PaymentViewModel viewModel) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.all(16.w),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteList.searchCustomer)
                      .whenComplete(() async {
                    await viewModel.getPaymentList();
                  });
                },
                backgroundColor: colorPrimary,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("List Pembayaran"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Builder(builder: (context) {
              return TextFormField(
                onChanged: (value) {
                  viewModel.search(value);
                },
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
            Builder(builder: (context) {
              var paymentList = context
                  .select((PaymentViewModel vm) => vm.paymentList.data ?? []);

              var foundUser =
                  context.select((PaymentViewModel vm) => vm.foundUsers);

              var isLoading =
                  context.select((PaymentViewModel vm) => vm.isLoading);

              if (isLoading) {
                return const LoadingState();
              }

              if (paymentList.isEmpty) {
                return Container(
                  margin: EdgeInsets.only(top: 50.w),
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
                      const Text("Waah masih kosong nih :)")
                    ],
                  ),
                );
              }
              if (foundUser.isEmpty) {
                return Container(
                  margin: EdgeInsets.only(top: 50.w),
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
                      const Text("Waah gak ketemu nih :)")
                    ],
                  ),
                );
              }
              return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: foundUser.length,
                  itemBuilder: (context, index) {
                    var item = foundUser[index];
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 16.w),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/icons/${item.avatar}",
                                height: 30.w,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${item.name} - ${item.wilayah?.namaWilayah}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.w,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4.w,
                                  ),
                                  Text(
                                    item.noPelanggan.toString(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.w,
                                        fontWeight: FontWeight.w200),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RouteList.paymentList,
                                      arguments: item.id.toString());
                                },
                                child: Container(
                                  height: 30.w,
                                  width: 34.w,
                                  decoration: BoxDecoration(
                                      color: colorPrimary,
                                      borderRadius: BorderRadius.circular(4.r),
                                      border:
                                          Border.all(color: Colors.black26)),
                                  child: Icon(
                                    Icons.visibility_sharp,
                                    size: 15.w,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        _divider()
                      ],
                    );
                  });
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
