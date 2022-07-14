import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/src/provider.dart';
import 'package:wasser_app/ui/pages/user_manage/view_model/user_manage_view_model.dart';
import 'package:wasser_app/ui/pages/user_manage/widget/wilayah_item.dart';

class WilayahBottomSheetBody extends StatefulWidget {
  const WilayahBottomSheetBody({Key? key}) : super(key: key);

  @override
  State<WilayahBottomSheetBody> createState() => _WilayahBottomSheetBodyState();
}

class _WilayahBottomSheetBodyState extends State<WilayahBottomSheetBody> {
  @override
  Widget build(BuildContext context) {
    var listWilayah =
        context.select((UserManageViewModel vm) => vm.listWilayah);
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
                (UserManageViewModel vm) => vm.selectedWilayahBottomSheet);
            var isSelected = selectedWilayahBottomSheet?.id == wilayah.id;

            return WilayahItem(
              isSelected: isSelected,
              onTap: () {
                context
                    .read<UserManageViewModel>()
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
