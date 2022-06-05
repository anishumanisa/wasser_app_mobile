import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wasser_app/shared/colors.dart';

class TextTheme {
  late BuildContext localContext;

  static TextTheme? _current;

  TextTheme(BuildContext context) {
    localContext = context;
  }

  static TextTheme get current => _current!;

  static TextTheme init(BuildContext context) {
    return _current ??= TextTheme(context);
  }

  TextStyle get h3 {
    return GoogleFonts.roboto(
        textStyle: Theme.of(localContext)
            .textTheme
            .headline3!
            .copyWith(leadingDistribution: TextLeadingDistribution.even),
        fontSize: 48.sp,
        color: kNeutral300,
        fontWeight: FontWeight.bold,
        height: 0.85,
        letterSpacing: 0);
  }

  TextStyle get h4 {
    return GoogleFonts.roboto(
        textStyle: Theme.of(localContext)
            .textTheme
            .headline4!
            .copyWith(leadingDistribution: TextLeadingDistribution.even),
        fontSize: 32.sp,
        color: kNeutral300,
        fontWeight: FontWeight.bold,
        height: 1.25,
        letterSpacing: 0.25);
  }

  TextStyle get h5 {
    return GoogleFonts.roboto(
        textStyle: Theme.of(localContext)
            .textTheme
            .headline5!
            .copyWith(leadingDistribution: TextLeadingDistribution.even),
        fontSize: 24.sp,
        color: kNeutral300,
        fontWeight: FontWeight.w900,
        height: 1.33,
        letterSpacing: 0);
  }

  TextStyle get h6 {
    return GoogleFonts.roboto(
        textStyle: Theme.of(localContext)
            .textTheme
            .headline6!
            .copyWith(leadingDistribution: TextLeadingDistribution.even),
        fontSize: 20.sp,
        color: kNeutral300,
        fontWeight: FontWeight.w900,
        height: 1.4,
        letterSpacing: 0.15);
  }

  TextStyle get title {
    return GoogleFonts.roboto(
        textStyle: Theme.of(localContext)
            .textTheme
            .subtitle1!
            .copyWith(leadingDistribution: TextLeadingDistribution.even),
        fontSize: 16.sp,
        color: kNeutral300,
        fontWeight: FontWeight.w900,
        height: 1.75,
        letterSpacing: 0.1);
  }

  TextStyle get subtitle {
    return GoogleFonts.roboto(
        textStyle: Theme.of(localContext)
            .textTheme
            .subtitle2!
            .copyWith(leadingDistribution: TextLeadingDistribution.even),
        fontSize: 14.sp,
        color: kNeutral300,
        fontWeight: FontWeight.w900,
        height: 1.71,
        letterSpacing: 0.1);
  }

  TextStyle get body1 {
    return GoogleFonts.roboto(
        textStyle: Theme.of(localContext)
            .textTheme
            .bodyText1!
            .copyWith(leadingDistribution: TextLeadingDistribution.even),
        fontSize: 16.sp,
        color: kNeutral300,
        fontWeight: FontWeight.normal,
        height: 1.75,
        letterSpacing: 0.5);
  }

  TextStyle get body2 {
    return GoogleFonts.roboto(
        textStyle: Theme.of(localContext)
            .textTheme
            .bodyText2!
            .copyWith(leadingDistribution: TextLeadingDistribution.even),
        fontSize: 14.sp,
        color: kNeutral300,
        fontWeight: FontWeight.normal,
        height: 1.71,
        letterSpacing: 0.25);
  }

  TextStyle get body3 {
    return GoogleFonts.roboto(
        textStyle: Theme.of(localContext)
            .textTheme
            .bodyText2!
            .copyWith(leadingDistribution: TextLeadingDistribution.even),
        fontSize: 12.sp,
        color: kNeutral300,
        fontWeight: FontWeight.normal,
        height: 1.66,
        letterSpacing: 0.2);
  }

  TextStyle get button {
    return GoogleFonts.roboto(
        textStyle: Theme.of(localContext)
            .textTheme
            .button!
            .copyWith(leadingDistribution: TextLeadingDistribution.even),
        fontSize: 14.sp,
        color: kNeutral300,
        fontWeight: FontWeight.w500,
        height: 1.71,
        letterSpacing: 1.25);
  }

  TextStyle get caption {
    return GoogleFonts.roboto(
        textStyle: Theme.of(localContext)
            .textTheme
            .caption!
            .copyWith(leadingDistribution: TextLeadingDistribution.even),
        fontSize: 12.sp,
        color: kNeutral300,
        fontWeight: FontWeight.bold,
        height: 1.5,
        letterSpacing: 0.4);
  }

  TextStyle get overline {
    return GoogleFonts.roboto(
        textStyle: Theme.of(localContext)
            .textTheme
            .overline!
            .copyWith(leadingDistribution: TextLeadingDistribution.even),
        fontSize: 10.sp,
        color: kNeutral300,
        fontWeight: FontWeight.w500,
        height: 1.6,
        letterSpacing: 0.5);
  }
}
