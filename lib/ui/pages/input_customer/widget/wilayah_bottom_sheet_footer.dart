import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/input_customer/view_model/input_customer_view_model.dart';

class WilayahBottomSheetFooter extends StatefulWidget {
  const WilayahBottomSheetFooter({Key? key}) : super(key: key);

  @override
  State<WilayahBottomSheetFooter> createState() =>
      _WilayahBottomSheetFooterState();
}

class _WilayahBottomSheetFooterState extends State<WilayahBottomSheetFooter> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: kNeutral700, width: 0.5.w))),
        child: SafeArea(
          top: false,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.w),
              height: 56.w,
              child: SizedBox(
                height: 48.w,
                width: double.infinity,
                child: Builder(builder: (context) {
                  var isActive = context.select((InputCustomerViewModel vm) =>
                      vm.isActiveWilayahBottomSheetButton);
                  return TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          isActive ? colorPrimary : Colors.black54),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    ),
                    onPressed: isActive
                        ? () async {
                            Navigator.pop(context);
                            await context
                                .read<InputCustomerViewModel>()
                                .setWilayah();
                          }
                        : null,
                    child: Text(
                      "Simpan",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.w,
                          fontWeight: FontWeight.w600),
                    ),
                  );
                }),
              )),
        ),
      ),
    );
  }
}
