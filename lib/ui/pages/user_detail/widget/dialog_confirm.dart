import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/common/widgets/loading_state.dart';
import 'package:wasser_app/shared/colors.dart';

class DialogConfirm extends StatelessWidget {
  DialogConfirm({
    required this.isLoading,
    required this.title,
    this.isAbleToBackClose = true,
    required this.onClick,
  });

  final bool isLoading;
  final String title;
  final bool isAbleToBackClose;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return isAbleToBackClose;
      },
      child: Center(
        child: SizedBox(
          width: 312.w,
          height: 160.w,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: 312.w,
                  height: 160.w,
                  padding: EdgeInsets.only(
                      left: 22.w, right: 22.w, top: 8.w, bottom: 26.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16.r)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 22.w,
                      ),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: colorPrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.w),
                      ),
                      SizedBox(
                        height: 16.w,
                      ),
                      isLoading
                          ? LoadingState()
                          : Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 44.w,
                                    child: TextButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color(0xff1D3A71)),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6.r),
                                          ),
                                        ),
                                      ),
                                      onPressed: onClick,
                                      child: Text(
                                        "HAPUS",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.w,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: SizedBox(
                                    height: 44.w,
                                    child: TextButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color(0xff1D3A71)),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6.r),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "BATAL",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.w,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
