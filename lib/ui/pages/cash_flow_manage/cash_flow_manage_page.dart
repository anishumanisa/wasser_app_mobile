import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/common/widgets/flash_bar_mixin.dart';
import 'package:wasser_app/common/widgets/loading_state.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/cash_flow_manage/repository/cash_flow_manage_repository.dart';
import 'package:wasser_app/ui/pages/cash_flow_manage/view_model/cash_flow_manage_view_model.dart';

class CashFlowManagePage extends StatefulWidget {
  const CashFlowManagePage({Key? key}) : super(key: key);

  @override
  _CashFlowManagePageState createState() => _CashFlowManagePageState();
}

class _CashFlowManagePageState extends State<CashFlowManagePage>
    with FlashBarMixin {
  final formGlobalKey = GlobalKey<FormState>();

  final _jumlahController = TextEditingController();
  final _keteranganController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<CashFlowManageViewModel>(
      key: const ValueKey('cash-flow-manage-view'),
      vmBuilder: (context) => CashFlowManageViewModel(
          jumlahController: _jumlahController,
          keteranganController: _keteranganController,
          cashFlowManageRepository: CashFlowManageRepository()),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, CashFlowManageViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("Saldo Kas"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        physics: const ScrollPhysics(),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              color: Colors.white54,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.w),
                  _buildMiddle(context),
                  SizedBox(height: 16.w),
                  _buildBottom(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMiddle(BuildContext context) {
    return Form(
      key: formGlobalKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Tipe",
                style: TextStyle(color: Colors.black54),
              ),
              SizedBox(
                height: 6.w,
              ),
              Builder(builder: (context) {
                var type =
                    context.select((CashFlowManageViewModel vm) => vm.listType);

                var selected = context
                    .select((CashFlowManageViewModel vm) => vm.selectedType);
                return SizedBox(
                  height: 30.w,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 36.w,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: type.length,
                    itemBuilder: (context, index) {
                      var item = type[index];
                      return GestureDetector(
                        onTap: () {
                          context
                              .read<CashFlowManageViewModel>()
                              .selectType(item.code ?? '2');
                        },
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
                              item.title ?? '',
                              style: TextStyle(
                                  fontSize: 14.w, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                );
              })
            ],
          ),
          SizedBox(height: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Jumlah",
                style: TextStyle(color: Colors.black54),
              ),
              SizedBox(
                height: 6.w,
              ),
              Builder(builder: (context) {
                return TextFormField(
                  controller: _jumlahController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Jumlah Harus diIsi!!";
                    }
                  },
                  style: const TextStyle(color: Colors.black),
                  scrollPadding: EdgeInsets.only(bottom: 100.w),
                  decoration: InputDecoration(
                    hintText: "Jumlah",
                    hintStyle: const TextStyle(color: Colors.black54),
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.w, horizontal: 10.w),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2),
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
            ],
          ),
          SizedBox(height: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Keterangan",
                style: TextStyle(color: Colors.black54),
              ),
              SizedBox(
                height: 6.w,
              ),
              Builder(builder: (context) {
                return TextFormField(
                  controller: _keteranganController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Keterangan Harus diIsi!!";
                    }
                  },
                  maxLines: 3,
                  style: const TextStyle(color: Colors.black),
                  scrollPadding: EdgeInsets.only(bottom: 100.w),
                  decoration: InputDecoration(
                    hintText: "Keterangan",
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
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottom(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Builder(builder: (context) {
          var isLoading =
              context.select((CashFlowManageViewModel vm) => vm.isLoading);
          return isLoading
              ? const LoadingState()
              : SizedBox(
                  height: 48.w,
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(colorPrimary),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (formGlobalKey.currentState!.validate()) {
                        formGlobalKey.currentState!.save();

                        _onSubmitCashFlow(
                            context, context.read<CashFlowManageViewModel>());
                        FocusScope.of(context).unfocus();
                      }
                    },
                    child: Text(
                      "Simpan",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.w,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                );
        }),
      ],
    );
  }

  Future<void> _onSubmitCashFlow(
      BuildContext context, CashFlowManageViewModel viewModel) async {
    var response = await viewModel.createCashFlow();
    var meta = response.meta;

    if (meta?.status ?? false) {
      showCustomFlash(context, "Berhasil diTambahkan :)");

      Future.delayed(const Duration(milliseconds: 1000), () {
        _navigateToNextScreen(context);
      });
    } else {
      showCustomFlash(context, "Upss, Gagal :(");
    }
  }

  void _navigateToNextScreen(BuildContext context) {
    // Navigator.pushReplacementNamed(
    //   context,
    //   RouteList.main,
    // );
    Navigator.pop(context);
  }
}
