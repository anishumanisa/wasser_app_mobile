import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/record/repository/record_respository.dart';
import 'package:wasser_app/ui/pages/record/view_model/record_view_model.dart';

class RecordPage extends StatefulWidget {
  const RecordPage({Key? key}) : super(key: key);

  @override
  State<RecordPage> createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView<RecordViewModel>(
      key: const ValueKey('payment-detail-view'),
      vmBuilder: (context) => RecordViewModel(
        recordRepository: RecordRepository(),
      ),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, RecordViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("Pencatatan"),
      ),
      body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Builder(builder: (context) {
                var data =
                    context.select((RecordViewModel vm) => vm.recordList.data);
                if ((data ?? []).isEmpty) {
                  return Container(
                    margin: EdgeInsets.only(top: 48.w),
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
                        const Text("Data nya masih kosong nih!! :)")
                      ],
                    ),
                  );
                }
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data?.length,
                    itemBuilder: (context, index) {
                      var item = data?[index];

                      var _tagihanBulan =
                          DateTime.parse(item?.tagihanBulan ?? '');
                      var month = DateFormat.LLLL().format(_tagihanBulan);

                      return Container(
                        margin: EdgeInsets.only(top: 16.w),
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 14.w),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 1,
                                spreadRadius: 1,
                                offset: const Offset(0, 1),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.r)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/icons/${item?.user?.avatar}",
                                      height: 16.w,
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item?.user?.name ?? '-',
                                          style: TextStyle(
                                              fontSize: 12.w,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  month,
                                  style: TextStyle(
                                      fontSize: 12.w, color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.w,
                            ),
                            _divider(),
                            SizedBox(
                              height: 10.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Meteran Awal",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.w),
                                ),
                                Text(
                                  (item?.meteranAwal ?? 0).toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.w),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Meteran Akhir",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.w),
                                ),
                                Text(
                                  (item?.meteranAkhir ?? 0).toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.w),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Kubikasi",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.w),
                                ),
                                Text(
                                  (item?.kubikasi ?? 0).toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.w),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              }),
            ],
          )),
    );
  }

  Widget _divider() {
    return Divider(
      height: 1.w,
      thickness: 0.5,
      color: Colors.black12,
    );
  }
}
