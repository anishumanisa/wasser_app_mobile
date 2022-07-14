import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/common/widgets/loading_state.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/customer/repository/customer_repository.dart';
import 'package:wasser_app/ui/pages/customer/view_model/customer_view_model.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({Key? key}) : super(key: key);

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView<CustomerViewModel>(
      key: const ValueKey('customer-view'),
      vmBuilder: (context) =>
          CustomerViewModel(customerRepository: CustomerRepository()),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, CustomerViewModel viewModel) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RouteList.inputCustomer)
              .whenComplete(() async {
            viewModel.getCustomerList();
          });
        },
        backgroundColor: colorPrimary,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("List Pelanggan"),
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
              var customerList = context
                  .select((CustomerViewModel vm) => vm.customerList.data ?? []);

              var foundUser =
                  context.select((CustomerViewModel vm) => vm.foundUsers);

              var isLoading =
                  context.select((CustomerViewModel vm) => vm.isLoading);

              if (isLoading) {
                return const LoadingState();
              }
              if (customerList.isEmpty) {
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
                      const Text("Waah data nya masih kosong nih :)")
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
              return ListView.separated(
                  separatorBuilder: (context, index) {
                    return _divider();
                  },
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: foundUser.length,
                  itemBuilder: (context, index) {
                    var item = foundUser[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteList.customerDetail,
                                arguments: item)
                            .whenComplete(() async {
                          await viewModel.getCustomerList();
                        });
                      },
                      child: Container(
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
                          ],
                        ),
                      ),
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
      thickness: 0.8,
      color: Colors.black26,
    );
  }
}
