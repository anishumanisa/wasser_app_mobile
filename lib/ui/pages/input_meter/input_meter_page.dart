import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/common/widgets/flash_bar_mixin.dart';
import 'package:wasser_app/common/widgets/loading_state.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/input_meter/repository/input_meter_repository.dart';
import 'package:wasser_app/ui/pages/input_meter/view_model/input_meter_view_model.dart';
import 'package:wasser_app/ui/pages/search_customer/model/search_customer_response.dart';

class InputMeterPage extends StatefulWidget {
  const InputMeterPage({Key? key, required this.dataCustomer})
      : super(key: key);

  final DataCustomer dataCustomer;

  @override
  State<InputMeterPage> createState() => _InputMeterPageState();
}

class _InputMeterPageState extends State<InputMeterPage> with FlashBarMixin {
  final formGlobalKey = GlobalKey<FormState>();

  final _meteranAkhirController = TextEditingController();
  final _meteranSekarangController = TextEditingController();
  final _kubikasiController = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback(
      ((_) {
        _meteranAkhirController.text =
            (widget.dataCustomer.payment?.meteranAkhir ?? 0).toString();
      }),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<InputMeterViewModel>(
      key: const ValueKey('search-customer-view'),
      vmBuilder: (context) => InputMeterViewModel(
          userId: widget.dataCustomer.user?.id ?? 0,
          inputMeterRepository: InputMeterRepository(),
          meteranAkhirController: _meteranAkhirController,
          meteranSekarangController: _meteranSekarangController,
          kubikasiController: _kubikasiController),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, InputMeterViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: colorPrimary,
        title: const Text("Input Pemakaian"),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              color: colorPrimary,
              padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.w),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
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
                                SizedBox(
                                  height: 3.w,
                                ),
                                Text(
                                  widget.dataCustomer.user?.name ?? '',
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
                                SizedBox(
                                  height: 3.w,
                                ),
                                Text(
                                  (widget.dataCustomer.user?.noPelanggan ?? '')
                                      .toString(),
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
                                SizedBox(
                                  height: 3.w,
                                ),
                                Text(
                                  widget.dataCustomer.user?.noTelp ?? '',
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
                            Builder(builder: (context) {
                              var _createDate = DateTime.parse(
                                  widget.dataCustomer.user?.createdAt ?? '');
                              var date =
                                  DateFormat.yMMMMd().format(_createDate);
                              return Column(
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
                                  SizedBox(
                                    height: 3.w,
                                  ),
                                  Text(
                                    widget.dataCustomer.user?.wilayah
                                            ?.namaWilayah ??
                                        '',
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
                                  SizedBox(
                                    height: 3.w,
                                  ),
                                  Text(
                                    date,
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 6.w,
                                  ),
                                ],
                              );
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.w,
            ),
            Form(
              key: formGlobalKey,
              child: Container(
                margin: EdgeInsets.only(right: 16.w, left: 16.w),
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 2,
                        spreadRadius: 1,
                        offset: const Offset(0, 1),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r)),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Meteran Terakhir",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.w,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 8.w,
                        ),
                        TextFormField(
                          controller: _meteranAkhirController,
                          readOnly: true,
                          style: const TextStyle(color: Colors.black),
                          scrollPadding: EdgeInsets.only(bottom: 100.w),
                          decoration: InputDecoration(
                            hintText: "ID",
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
                    SizedBox(
                      height: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Meteran Sekarang",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.w,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 8.w,
                        ),
                        TextFormField(
                          onChanged: (val) {
                            if (val.isEmpty) {
                              val = '0';
                              _kubikasiController.text = '0';
                            } else if (int.parse(val) <=
                                int.parse(_meteranAkhirController.text)) {
                              _kubikasiController.text = '0';
                            } else {
                              var calculate = int.parse(val) -
                                  int.parse(_meteranAkhirController.text);
                              _kubikasiController.text = calculate.toString();
                            }
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Meteran Sekarang Harus diIsi!!";
                            } else if (int.parse(value) <=
                                int.parse(_meteranAkhirController.text)) {
                              return "Upss, Data Tidak Sesuai!!";
                            }
                          },
                          controller: _meteranSekarangController,
                          style: const TextStyle(color: Colors.black),
                          scrollPadding: EdgeInsets.only(bottom: 100.w),
                          decoration: InputDecoration(
                            hintText: "Meteran Sekarang",
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
                    SizedBox(
                      height: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kubikasi",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.w,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 8.w,
                        ),
                        TextFormField(
                          controller: _kubikasiController,
                          readOnly: true,
                          style: const TextStyle(color: Colors.black),
                          scrollPadding: EdgeInsets.only(bottom: 100.w),
                          decoration: InputDecoration(
                            hintText: "Kubikasi",
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
                    SizedBox(
                      height: 16.w,
                    ),
                    Builder(builder: (context) {
                      var isLoading = context
                          .select((InputMeterViewModel vm) => vm.isLoading);
                      return isLoading
                          ? const LoadingState()
                          : SizedBox(
                              height: 38.w,
                              width: double.infinity,
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          colorPrimary),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6.r),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  if (formGlobalKey.currentState!.validate()) {
                                    formGlobalKey.currentState!.save();

                                    _onSubmitted(context, viewModel);
                                    FocusScope.of(context).unfocus();
                                  }
                                },
                                child: Text(
                                  "Simpan".toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.w,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            );
                    }),
                    SizedBox(
                      height: 6.w,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onSubmitted(
      BuildContext context, InputMeterViewModel viewModel) async {
    var response = await viewModel.inputMeter();
    var meta = response.meta;

    if (meta?.status ?? false) {
      showCustomFlash(context, "Data Berhasil diTambahkan :)");
      Future.delayed(const Duration(milliseconds: 1000), () {
        Navigator.pop(context);
      });
    } else {
      showCustomFlash(context, "Upss, Data Gagal diTambahkan :(");
    }
  }
}
