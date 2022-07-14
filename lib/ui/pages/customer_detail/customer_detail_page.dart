import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/common/widgets/flash_bar_mixin.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/customer_detail/repository/customer_detail_repository.dart';
import 'package:wasser_app/ui/pages/customer_detail/view_model/customer_detail_view_model.dart';
import 'package:wasser_app/ui/pages/customer_detail/widget/dialog_confirm.dart';

import '../customer/model/customer_list_response.dart';

class CustomerDetailPage extends StatefulWidget {
  const CustomerDetailPage({Key? key, required this.user}) : super(key: key);

  final User user;
  @override
  State<CustomerDetailPage> createState() => _CustomerDetailPageState();
}

class _CustomerDetailPageState extends State<CustomerDetailPage>
    with FlashBarMixin {
  @override
  Widget build(BuildContext context) {
    return BaseView<CustomerDetailViewModel>(
      key: const ValueKey('customer-detail-view'),
      vmBuilder: (context) => CustomerDetailViewModel(
          customerDetailRepository: CustomerDetailRepository()),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, CustomerDetailViewModel viewModel) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: colorPrimary,
        shadowColor: Colors.transparent,
        title: const Text(
          "Detail Pelanggan",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
              width: double.infinity,
              child: Builder(builder: (context) {
                var _createDate = DateTime.parse(widget.user.createdAt ?? '');
                var date = DateFormat.yMMMMd().format(_createDate);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      // width: 80.w,
                      child: Image.asset(
                        "assets/icons/${widget.user.avatar}",
                        width: 85.w,
                      ),
                    ),
                    SizedBox(
                      height: 16.w,
                    ),
                    Text(
                      "Nama Customer",
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Text(
                      widget.user.name ?? '',
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    _divider(),
                    SizedBox(
                      height: 12.w,
                    ),
                    Text(
                      "ID Pelanggan",
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Text(
                      (widget.user.noPelanggan ?? '').toString(),
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    _divider(),
                    SizedBox(
                      height: 12.w,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Text(
                      (widget.user.email ?? '').toString(),
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    _divider(),
                    SizedBox(
                      height: 12.w,
                    ),
                    Text(
                      "No Telp",
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Text(
                      widget.user.noTelp ?? '',
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    _divider(),
                    SizedBox(
                      height: 12.w,
                    ),
                    Text(
                      "Jenis Kelamin",
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Text(
                      (widget.user.jk == 'male' ? 'Pria' : 'Wanita'),
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    _divider(),
                    SizedBox(
                      height: 12.w,
                    ),
                    Text(
                      "Wilayah",
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Text(
                      widget.user.wilayah?.namaWilayah ?? '',
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    _divider(),
                    SizedBox(
                      height: 12.w,
                    ),
                    Text(
                      "Terdaftar",
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Text(
                      date,
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    _divider(),
                    SizedBox(
                      height: 12.w,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 36.w,
                          child: TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        colorPrimary),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                _dialogConfirm(
                                    context,
                                    context.read<CustomerDetailViewModel>(),
                                    widget.user.id.toString());
                              },
                              child: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              )),
                        )
                      ],
                    )
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  void _dialogConfirm(
      BuildContext context, CustomerDetailViewModel viewModel, String id) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          var isLoading = viewModel.isLoading;
          return DialogConfirm(
              isLoading: isLoading,
              title: "Apakah anda ingin menghapus?",
              isAbleToBackClose: true,
              onClick: () async {
                _onDelete(context, viewModel, id);
              });
        });
  }

  Future<void> _onDelete(BuildContext context,
      CustomerDetailViewModel viewModel, String id) async {
    var response = await viewModel.deleteUser(id: id);
    var meta = response.meta;

    if (meta?.status ?? false) {
      showCustomFlash(context, "yeeay, Data Berhasil diHapus :)");
      Future.delayed(const Duration(milliseconds: 1000), () {
        var count = 0;
        Navigator.of(context).popUntil((_) => count++ >= 2);
      });
    } else {
      showCustomFlash(context, "Upss, Data Gagal diHapus :(");
    }
  }

  Widget _divider() {
    return Divider(
      height: 1.w,
      thickness: 0.5,
      color: Colors.black38,
    );
  }
}
