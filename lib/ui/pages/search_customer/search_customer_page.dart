import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/common/widgets/flash_bar_mixin.dart';
import 'package:wasser_app/common/widgets/loading_state.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/search_customer/repository/search_customer_repository.dart';
import 'package:wasser_app/ui/pages/search_customer/view_model/search_customer_view_model.dart';

class SearchCustomerPage extends StatefulWidget {
  const SearchCustomerPage({Key? key}) : super(key: key);

  @override
  State<SearchCustomerPage> createState() => _SearchCustomerPageState();
}

class _SearchCustomerPageState extends State<SearchCustomerPage>
    with FlashBarMixin {
  final formGlobalKey = GlobalKey<FormState>();

  final _customerNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<SearchCustomerViewModel>(
      key: const ValueKey('search-customer-view'),
      vmBuilder: (context) => SearchCustomerViewModel(
        customerNoController: _customerNoController,
        searchCustomerRepository: SearchCustomerRepository(),
      ),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, SearchCustomerViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("Cari No Pelanggan"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 80.w),
        physics: const ScrollPhysics(),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 16.w,
            ),
            Form(
              key: formGlobalKey,
              child: Container(
                padding: EdgeInsets.only(
                    right: 12.w, left: 12.w, top: 36.w, bottom: 12.w),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 120.w,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(100.r)),
                      child: Image.asset(
                        "assets/icons/ic_input.png",
                      ),
                    ),
                    SizedBox(
                      height: 28.w,
                    ),
                    Text(
                      "INPUT NO PELANGGAN",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.w,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 16.w,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "No Pelanggan Harus diIsi!!";
                        }
                      },
                      controller: _customerNoController,
                      style: const TextStyle(color: Colors.black),
                      scrollPadding: EdgeInsets.only(bottom: 100.w),
                      decoration: InputDecoration(
                        hintText: "No Pelanggan",
                        hintStyle: const TextStyle(color: Colors.black54),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.w, horizontal: 10.w),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide:
                              const BorderSide(color: Colors.black26, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide:
                              const BorderSide(color: Colors.black26, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide:
                              const BorderSide(color: Colors.black26, width: 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.w,
                    ),
                    Builder(builder: (context) {
                      var isLoading = context
                          .select((SearchCustomerViewModel vm) => vm.isLoading);
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

                                    _onSubmitCustomerNo(
                                        context,
                                        context
                                            .read<SearchCustomerViewModel>());
                                    FocusScope.of(context).unfocus();
                                  }
                                },
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.w,
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

  Future<void> _onSubmitCustomerNo(
      BuildContext context, SearchCustomerViewModel viewModel) async {
    var response = await viewModel.getCustomer();
    var meta = response.meta;
    var data = response.data;

    if (meta?.status ?? false) {
      Future.delayed(const Duration(milliseconds: 1000), () {
        Navigator.popAndPushNamed(context, RouteList.inputMeter,
            arguments: data);
      });
    } else {
      showCustomFlash(context, "Upss, Gagal :(");
    }
  }
}
