import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/common/widgets/loading_state.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/transaction/repository/transaction_repository.dart';
import 'package:wasser_app/ui/pages/transaction/view_model/transaction_view_model.dart';

class TransactionListPage extends StatefulWidget {
  const TransactionListPage({Key? key}) : super(key: key);

  @override
  _TransactionListPageState createState() => _TransactionListPageState();
}

class _TransactionListPageState extends State<TransactionListPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView<TransactionViewModel>(
      key: const ValueKey('transaction-list-view'),
      vmBuilder: (context) =>
          TransactionViewModel(transactionRepository: TransactionRepository()),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, TransactionViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("Transaction History"),
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
              height: 24.w,
            ),
            Builder(builder: (context) {
              var transactionList = context.select(
                  (TransactionViewModel vm) => vm.transactionList.data ?? []);

              var foundUser =
                  context.select((TransactionViewModel vm) => vm.foundUsers);

              var isLoading =
                  context.select((TransactionViewModel vm) => vm.isLoading);

              if (isLoading) {
                return const LoadingState();
              }
              if (transactionList.isEmpty) {
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
                      const Text("Transaksi nya masih kosong nih :)")
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
                      const Text("Wah data nya gak ketemu :)")
                    ],
                  ),
                );
              }
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: foundUser.length,
                itemBuilder: (context, index) {
                  var item = foundUser[index];
                  return Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/${item.user?.avatar}",
                            height: 30.w,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${item.user?.name} - ${item.user?.wilayah?.namaWilayah}",
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
                                item.user?.noPelanggan.toString() ?? '',
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
                                  item.pembayaran?.status == 'paid'
                                      ? "Sudah Bayar"
                                      : 'Belum Bayar',
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
                                item.tglTransaksi ?? '-',
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
              );
            }),
          ],
        ),
      ),
    );
  }
}
