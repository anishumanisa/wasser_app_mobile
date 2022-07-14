import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/shared/colors.dart';

mixin FlashBarMixin {
  void showCustomFlash(BuildContext context, String message) {
    showFlash(
      duration: const Duration(seconds: 2),
      context: context,
      builder: (_, controller) {
        return Flash(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          controller: controller,
          behavior: FlashBehavior.floating,
          position: FlashPosition.bottom,
          borderRadius: BorderRadius.circular(6.0),
          backgroundColor: colorPrimary,
          forwardAnimationCurve: Curves.easeIn,
          reverseAnimationCurve: Curves.bounceIn,
          child: DefaultTextStyle(
            style: const TextStyle(color: Colors.white),
            child: FlashBar(
              // title: const Text('Hello Flash'),
              content: Text(message),
              indicatorColor: colorAccentPrimary,
              icon: const Icon(
                Icons.info_outline_rounded,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
