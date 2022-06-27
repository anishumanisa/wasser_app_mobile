import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/common/widgets/loading_state.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/core/utils/number_format.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/home/repository/home_repository.dart';
import 'package:wasser_app/ui/pages/home/view_model/home_view_model.dart';
import 'package:wasser_app/ui/pages/home/widget/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      key: const ValueKey('home-view'),
      vmBuilder: (context) => HomeViewModel(homeRepository: HomeRepository()),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
        physics: const BouncingScrollPhysics(),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Builder(builder: (context) {
                  var user = context.select((HomeViewModel vm) => vm.user);
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome Back !",
                        style: TextStyle(color: colorPrimary),
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Text(
                        user.name ?? '',
                        style: TextStyle(
                          color: colorPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.w,
                        ),
                      )
                    ],
                  );
                }),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RouteList.example);
                  },
                  child: const Icon(
                    Icons.notifications_active,
                    color: colorPrimary,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.w,
            ),
            const CarouselSliders(),
            SizedBox(
              height: 20.w,
            ),
            Builder(builder: (context) {
              var income = context.select((HomeViewModel vm) => vm.income);

              var outcome = context.select((HomeViewModel vm) => vm.outcome);
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: 35.w,
                              height: 35.w,
                              decoration: BoxDecoration(
                                  color: colorPrimary,
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: Icon(
                                Icons.arrow_downward_sharp,
                                color: Colors.white,
                                size: 18.w,
                              )),
                          SizedBox(
                            width: 14.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Income",
                                style: TextStyle(
                                    fontSize: 12.w, color: Colors.black54),
                              ),
                              SizedBox(
                                height: 4.w,
                              ),
                              Text(
                                NumberFormatter.rupiah(income),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                      width: 100.w,
                      height: 60.w,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 2.r,
                              spreadRadius: 1,
                              offset: const Offset(0, 1),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r)),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: 35.w,
                              height: 35.w,
                              decoration: BoxDecoration(
                                  color: colorAccentPrimary,
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: Icon(
                                Icons.arrow_upward_sharp,
                                color: Colors.white,
                                size: 18.w,
                              )),
                          SizedBox(
                            width: 14.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Outcome",
                                style: TextStyle(
                                    fontSize: 12.w, color: Colors.black54),
                              ),
                              SizedBox(
                                height: 4.w,
                              ),
                              Text(
                                NumberFormatter.rupiah(outcome),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                      width: 100.w,
                      height: 60.w,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 2.r,
                              spreadRadius: 1,
                              offset: const Offset(0, 1),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r)),
                    ),
                  ),
                ],
              );
            }),
            SizedBox(
              height: 16.w,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
              width: 200.w,
              height: 76.w,
              decoration: BoxDecoration(
                  color: colorPrimary,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteList.cashFlow);
                      },
                      child: Column(
                        children: [
                          const Icon(
                            Icons.insert_chart_outlined_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Text(
                            "Saldo Kas",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.w,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteList.complain);
                      },
                      child: Column(
                        children: [
                          const Icon(
                            Icons.settings_applications_sharp,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Text(
                            "Pengaduan",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.w,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteList.transaction);
                      },
                      child: Column(
                        children: [
                          const Icon(
                            Icons.attach_money_sharp,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Text(
                            "Transaksi",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.w,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Icon(
                          Icons.receipt,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 5.w,
                        ),
                        Text(
                          "Pencatatan",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.w,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "All Transaction",
                  style: TextStyle(
                    fontSize: 16.w,
                    fontWeight: FontWeight.bold,
                    color: colorPrimary,
                  ),
                ),
                SizedBox(
                  height: 16.w,
                ),
                Row(
                  children: const [
                    Text(
                      "Maret 2022",
                      style: TextStyle(color: colorPrimary),
                    ),
                    Spacer(),
                    Text(
                      "Diperbaharui Hari Ini,19.50",
                      style: TextStyle(color: colorPrimary),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.w,
                ),
                Builder(builder: (context) {
                  var transactionList = context.select(
                      (HomeViewModel vm) => vm.transactionList.data ?? []);

                  var isLoading =
                      context.select((HomeViewModel vm) => vm.isLoading);

                  if (isLoading) {
                    return const LoadingState();
                  }
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: transactionList.length,
                    itemBuilder: (context, index) {
                      var item = transactionList[index];
                      return Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/logo.png",
                                scale: 15.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${item.user?.name} - ${item.user?.wilayahId}",
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
                                    item.user?.noPelanggan.toString() ?? '-',
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
                                      borderRadius: BorderRadius.circular(5.r),
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
            )
          ],
        ),
      ),
    );
  }
}
