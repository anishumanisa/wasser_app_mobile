import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/shared/colors.dart';

class DialogConfirm extends StatelessWidget {
  DialogConfirm({
    required this.title,
    required this.subTitle,
    this.isAbleToBackClose = true,
    required this.onClick,
  });

  final String title;
  final String subTitle;
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
          height: 250.w,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: 312.w,
                  height: 250.w,
                  padding: EdgeInsets.only(
                      left: 22.w, right: 22.w, top: 16.w, bottom: 32.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16.r)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 70.w,
                        height: 70.w,
                        child: const Image(
                          image: AssetImage('assets/images/ic_profile.png'),
                        ),
                      ),
                      SizedBox(
                        height: 16.w,
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
                        height: 8.w,
                      ),
                      Text(
                        subTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.w),
                      ),
                      SizedBox(
                        height: 22.w,
                      ),
                      SizedBox(
                        height: 44.w,
                        width: double.infinity,
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xff1D3A71)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                            ),
                          ),
                          onPressed: onClick,
                          child: Text(
                            "Complete",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.w,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
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
