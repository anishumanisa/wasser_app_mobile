import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/common/widgets/flash_bar_mixin.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/core/utils/number_format.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/payment_confirm/repository/payment_confirm_repository.dart';
import 'package:wasser_app/ui/pages/payment_confirm/view_model/payment_confirm_view_model.dart';
import 'package:wasser_app/ui/pages/payment_confirm/widget/dialog_confirm.dart';

class PaymentConfirmPage extends StatefulWidget {
  const PaymentConfirmPage({Key? key, required this.paymentId})
      : super(key: key);

  final String paymentId;
  @override
  _PaymentConfirmPageState createState() => _PaymentConfirmPageState();
}

class _PaymentConfirmPageState extends State<PaymentConfirmPage>
    with FlashBarMixin {
  final formGlobalKey = GlobalKey<FormState>();

  final _amountController = TextEditingController();
  final _noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<PaymentConfirmViewModel>(
      key: const ValueKey('payment-confirm-view'),
      vmBuilder: (context) => PaymentConfirmViewModel(
          paymentId: widget.paymentId,
          amountController: _amountController,
          noteController: _noteController,
          paymentConfirmRepository: PaymentConfirmRepository()),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, PaymentConfirmViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1D3A71),
        title: const Text("Payment Confirm"),
      ),
      body: Builder(builder: (context) {
        var data = context
            .select((PaymentConfirmViewModel vm) => vm.paymentConfirm.data);

        var _createDate = DateTime.parse(data?.tagihanBulan ?? '');
        var date = DateFormat.LLLL().format(_createDate);

        var currentDate = DateFormat.yMMMd().format(DateTime.now());

        var penalty =
            context.select((PaymentConfirmViewModel vm) => vm.penalty);

        var adminFee = 5000;
        var total = (data?.jumlahBayar ?? 0) + (penalty ?? 0) + adminFee;

        return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            physics: const ScrollPhysics(),
            child: Form(
              key: formGlobalKey,
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      "assets/icons/${data?.user?.avatar}",
                      height: 30.w,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        data?.user?.name ?? '',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.w),
                      ),
                      Text(
                        data?.user?.noPelanggan.toString() ?? '',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.w,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Transaction Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xff1D3A71),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white24)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Meteran Awal",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  data?.meteranAwal.toString() ?? '-',
                                  style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  "Meteran Akhir",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  data?.meteranAkhir.toString() ?? '-',
                                  style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  "Kubikasi",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  data?.kubikasi.toString() ?? '-',
                                  style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 28,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Bulan",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  date,
                                  style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  "Wilayah",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  data?.user?.wilayah?.namaWilayah ?? '',
                                  style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  "Tanggal",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  currentDate,
                                  style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _divider(),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Denda",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            Text(
                              NumberFormatter.rupiah(penalty ?? 0),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Admin Fee",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            Text(
                              "Rp 5.000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Sub Total",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            Text(
                              NumberFormatter.rupiah(data?.jumlahBayar ?? 0)
                                  .toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        _divider(),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Total",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            Text(
                              NumberFormatter.rupiah(total),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Payment Method",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Builder(builder: (context) {
                    var method = context.select(
                        (PaymentConfirmViewModel vm) => vm.listPaymentMethod);

                    var selected = context.select(
                        (PaymentConfirmViewModel vm) =>
                            vm.selectedPaymentMethod);

                    return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: method.length,
                      itemBuilder: (context, index) {
                        var item = method[index];
                        return GestureDetector(
                          onTap: () {
                            context
                                .read<PaymentConfirmViewModel>()
                                .selectPaymentMethod(item.code ?? '2');
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 8.w),
                            child: Row(
                              children: [
                                Icon(
                                  item.code == selected
                                      ? Icons.radio_button_checked_outlined
                                      : Icons.radio_button_off_outlined,
                                  color: item.code == selected
                                      ? colorPrimary
                                      : Colors.grey,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  item.title ?? '-',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.w,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }),
                  const SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Amount",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6.w,
                      ),
                      TextFormField(
                        controller: _amountController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Amount Harus diIsi!!";
                          }
                        },
                        style: const TextStyle(color: Colors.black),
                        scrollPadding: EdgeInsets.only(bottom: 100.w),
                        decoration: InputDecoration(
                          hintText: "Amount",
                          hintStyle: const TextStyle(color: Colors.black54),
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.w, horizontal: 10.w),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(
                                color: Colors.black26, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(
                                color: Colors.black26, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(
                                color: Colors.black26, width: 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Note",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6.w,
                      ),
                      TextFormField(
                        controller: _noteController,
                        style: const TextStyle(color: Colors.black),
                        scrollPadding: EdgeInsets.only(bottom: 100.w),
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: "Note...",
                          hintStyle: const TextStyle(color: Colors.black54),
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.w, horizontal: 10.w),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  _buildButtonConfirm(context)
                ],
              ),
            ));
      }),
    );
  }

  Widget _buildButtonConfirm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Builder(builder: (context) {
          return SizedBox(
            height: 44.w,
            width: double.infinity,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff1D3A71)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),
              ),
              onPressed: () {
                if (formGlobalKey.currentState!.validate()) {
                  formGlobalKey.currentState!.save();

                  _onSubmitTransaction(
                      context, context.read<PaymentConfirmViewModel>());

                  FocusScope.of(context).unfocus();
                }
              },
              child: const Text(
                "BAYAR",
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

  Future<void> _onSubmitTransaction(
      BuildContext context, PaymentConfirmViewModel viewModel) async {
    var response = await viewModel.createTransaction();
    var meta = response.meta;

    if (meta?.status ?? false) {
      showDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) {
            return DialogConfirm(
                title: "Transaksi Berhasil",
                subTitle: "",
                isAbleToBackClose: true,
                onClick: () async {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(
                      context, RouteList.paymentReceipt,
                      arguments: response.data);
                });
          });
    } else {
      showCustomFlash(context, "Upss, Transaksi Gagal :(");
    }
  }

  Widget _divider() {
    return const Divider(
      height: 1,
      thickness: 0.5,
      color: Colors.white,
    );
  }
}
