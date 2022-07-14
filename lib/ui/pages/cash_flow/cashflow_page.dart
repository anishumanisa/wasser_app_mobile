import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/common/widgets/loading_state.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/core/utils/number_format.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/cash_flow/repository/cash_flow_repository.dart';
import 'package:wasser_app/ui/pages/cash_flow/view_model/cash_flow_view_model.dart';

class CashFlowPage extends StatefulWidget {
  const CashFlowPage({Key? key}) : super(key: key);

  @override
  _CashFlowPageState createState() => _CashFlowPageState();
}

class _CashFlowPageState extends State<CashFlowPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView<CashFlowViewModel>(
      key: const ValueKey('cash-flow-view'),
      vmBuilder: (context) =>
          CashFlowViewModel(cashFlowRepository: CashFlowRepository()),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, CashFlowViewModel viewModel) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RouteList.cashFlowManage)
              .whenComplete(() async {
            await viewModel.cashFlow();
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
        title: const Text("SALDO KAS"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
        physics: const BouncingScrollPhysics(),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Builder(builder: (context) {
              var total = context.select((CashFlowViewModel vm) => vm.total);
              return Container(
                padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
                decoration: BoxDecoration(
                    color: colorPrimary,
                    borderRadius: BorderRadius.all(Radius.circular(8.w))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TOTAL SALDO",
                      style: TextStyle(fontSize: 16.w, color: Colors.white),
                    ),
                    Text(
                      NumberFormatter.rupiah(total),
                      style: TextStyle(
                          fontSize: 16.w,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              );
            }),
            Builder(builder: (context) {
              var income = context.select((CashFlowViewModel vm) => vm.income);

              var outcome =
                  context.select((CashFlowViewModel vm) => vm.outcome);

              return Column(
                children: [
                  SizedBox(
                    height: 16.w,
                  ),
                  Row(
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
                                    "INCOME",
                                    style: TextStyle(
                                        fontSize: 12.w, color: Colors.black54),
                                  ),
                                  SizedBox(height: 4.w),
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
                                    "OUTCOME",
                                    style: TextStyle(
                                        fontSize: 12.w, color: Colors.black54),
                                  ),
                                  SizedBox(height: 4.w),
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
                  ),
                ],
              );
            }),
            SizedBox(
              height: 16.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Riwayat",
                  style: TextStyle(fontSize: 16.w, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.w,
                ),
                Builder(builder: (context) {
                  var cashFlowList = context.select(
                      (CashFlowViewModel vm) => vm.cashFlowList.data ?? []);

                  var isLoading =
                      context.select((CashFlowViewModel vm) => vm.isLoading);

                  if (isLoading) {
                    return const LoadingState();
                  }

                  if (cashFlowList.isEmpty) {
                    return Center(
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
                          const Text("Saldo nya masih kosong nih!! :)")
                        ],
                      ),
                    );
                  }
                  return ListView.separated(
                      separatorBuilder: (_, __) => Divider(
                            height: 1.w,
                            color: kNeutral600,
                          ),
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: cashFlowList.length,
                      itemBuilder: (context, index) {
                        var item = cashFlowList[index];

                        var _createDate = DateTime.parse(item.createdAt ?? '');
                        var date = DateFormat.yMMMEd().format(_createDate);

                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 8.w),
                          child: Row(
                            children: [
                              Container(
                                  width: 35.w,
                                  height: 35.w,
                                  decoration: BoxDecoration(
                                      color: item.type == "in"
                                          ? colorPrimary
                                          : colorAccentPrimary,
                                      borderRadius: BorderRadius.circular(8.r)),
                                  child: Icon(
                                    item.type == "in"
                                        ? Icons.arrow_downward_sharp
                                        : Icons.arrow_upward_sharp,
                                    color: Colors.white,
                                    size: 18.w,
                                  )),
                              SizedBox(
                                width: 16.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.keterangan?.toUpperCase() ?? '',
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 4.w),
                                  Text(
                                    NumberFormatter.rupiah(item.jumlah ?? 0),
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    item.type == "in" ? 'MASUK' : 'KELUAR',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 4.w),
                                  Text(
                                    date,
                                    style: TextStyle(
                                        fontSize: 12.w,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      });
                }),
                SizedBox(
                  height: 16.w,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
