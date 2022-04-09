import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/shared/colors.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback(
      ((_) {}),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 100.w),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context),
                SizedBox(height: 16.w),
                _buildMiddle(context),
                SizedBox(height: 8.w),
                _buildBottom(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 50.w,
          width: 50.w,
          decoration: BoxDecoration(
              color: colorPrimary, borderRadius: BorderRadius.circular(10.r)),
        ),
        SizedBox(height: 16.w),
        Text(
          "Welcome to Wasser",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.w),
        ),
        Text(
          "Sign in to get started",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12.w),
        ),
      ],
    );
  }

  Widget _buildMiddle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Email Address",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 6.w,
            ),
            Builder(builder: (context) {
              return TextFormField(
                controller: _emailController,
                style: const TextStyle(color: Colors.black),
                scrollPadding: EdgeInsets.only(bottom: 100.w),
                decoration: InputDecoration(
                  hintText: "Email Address",
                  hintStyle: const TextStyle(color: Colors.black54),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.w, horizontal: 10.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                ),
              );
            }),
          ],
        ),
        SizedBox(height: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Password",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 6.w,
            ),
            Builder(builder: (context) {
              return TextFormField(
                controller: _passwordController,
                style: const TextStyle(color: Colors.black),
                scrollPadding: EdgeInsets.only(bottom: 100.w),
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: const TextStyle(color: Colors.black54),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.w, horizontal: 10.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: Colors.grey, width: 2.w),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                ),
              );
            }),
          ],
        ),
      ],
    );
  }

  Widget _buildBottom(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {},
          child: const Text(
            "Forgot Password?",
            style: TextStyle(
                color: colorPrimary,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                decoration: TextDecoration.underline),
          ),
        ),
        SizedBox(height: 8.w),
        Builder(builder: (context) {
          return SizedBox(
            width: double.infinity,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(colorPrimary),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ),
              onPressed: () {
                FocusScope.of(context).unfocus();
              },
              child: const Text(
                "Sign in",
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        }),
        SizedBox(height: 16.w),
        Row(
          children: [
            const Text("Don't have an account?",
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                )),
            SizedBox(
              width: 6.w,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: colorPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.w,
                    decoration: TextDecoration.underline),
              ),
            ),
          ],
        )
      ],
    );
  }
}
