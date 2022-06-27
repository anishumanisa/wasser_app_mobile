import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/common/widgets/loading_state.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/core/utils/number_format.dart';
import 'package:wasser_app/core/utils/string_extension.dart';
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
          Navigator.pushNamed(context, RouteList.cashFlowManage);
        },
        backgroundColor: colorPrimary,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("Saldo Kas"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
        physics: const BouncingScrollPhysics(),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Builder(builder: (context) {
              var income = context.select((CashFlowViewModel vm) => vm.income);

              var outcome =
                  context.select((CashFlowViewModel vm) => vm.outcome);

              return Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Saldo Kas",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16.w,
                            ),
                          ),
                          SizedBox(
                            height: 2.w,
                          ),
                          Text(
                            NumberFormatter.rupiah(income),
                            style: TextStyle(
                                color: colorPrimary,
                                fontSize: 18.w,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const Spacer(),
                      const Text("Month")
                    ],
                  ),
                  SizedBox(
                    height: 30.w,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        scale: 10.w,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16.w,
                  ),
                  SizedBox(
                    height: 30.w,
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
                                    "Income",
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
                                    "Outcome",
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
                  "All Transaction",
                  style: TextStyle(fontSize: 16.w, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16.w,
                ),
                Row(
                  children: const [
                    Text("Market 2022"),
                    Spacer(),
                    Text("Diperbaharui Hari Ini,19.50"),
                  ],
                ),
                SizedBox(
                  height: 10.w,
                ),
                Builder(builder: (context) {
                  var cashFlowList = context.select(
                      (CashFlowViewModel vm) => vm.cashFlowList.data ?? []);

                  var isLoading =
                      context.select((CashFlowViewModel vm) => vm.isLoading);

                  if (isLoading) {
                    return const LoadingState();
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
                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 8.w),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/logo.png",
                                scale: 15.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(item.keterangan ?? ''),
                                  SizedBox(height: 4.w),
                                  Text(
                                    NumberFormatter.rupiah(item.jumlah ?? 0),
                                    style: TextStyle(
                                        fontSize: 12.w, color: Colors.black45),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text((item.type ?? '')
                                      .toUpperCaseFirstCharacterOfString()),
                                  SizedBox(height: 4.w),
                                  Text(
                                    item.tglInput ?? '-',
                                    style: TextStyle(
                                        fontSize: 12.w, color: Colors.black45),
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
