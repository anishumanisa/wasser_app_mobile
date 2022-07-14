import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/src/provider.dart';
import 'package:wasser_app/ui/pages/input_customer/view_model/input_customer_view_model.dart';
import 'package:wasser_app/ui/pages/input_customer/widget/wilayah_item.dart';

class WilayahBottomSheetBody extends StatefulWidget {
  const WilayahBottomSheetBody({Key? key}) : super(key: key);

  @override
  State<WilayahBottomSheetBody> createState() => _WilayahBottomSheetBodyState();
}

class _WilayahBottomSheetBodyState extends State<WilayahBottomSheetBody> {
  @override
  Widget build(BuildContext context) {
    var listWilayah =
        context.select((InputCustomerViewModel vm) => vm.listWilayah);
    return Material(
      child: SafeArea(
        top: false,
        bottom: false,
        child: ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
          ),
          itemCount: listWilayah.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Builder(builder: (context) {
            var wilayah = listWilayah[index];

            var selectedWilayahBottomSheet = context.select(
                (InputCustomerViewModel vm) => vm.selectedWilayahBottomSheet);
            var isSelected = selectedWilayahBottomSheet?.id == wilayah.id;

            return WilayahItem(
              isSelected: isSelected,
              onTap: () {
                context
                    .read<InputCustomerViewModel>()
                    .selectWilayahBottomSheet(wilayah: wilayah);
              },
              title: wilayah.namaWilayah ?? '',
            );
          }),
          separatorBuilder: (context, index) => SizedBox(
            height: 1.w,
          ),
        ),
      ),
    );
  }
}
