import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/login/model/login_response.dart';

class ProfileDetailPage extends StatefulWidget {
  const ProfileDetailPage({Key? key, required this.user}) : super(key: key);

  final User user;
  @override
  State<ProfileDetailPage> createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: colorPrimary,
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
              width: double.infinity,
              child: Builder(builder: (context) {
                var _createDate = DateTime.parse(widget.user.createdAt ?? '');
                var date = DateFormat.yMMMMd().format(_createDate);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      // width: 80.w,
                      child: Image.asset(
                        "assets/icons/${widget.user.avatar}",
                        width: 85.w,
                      ),
                    ),
                    SizedBox(
                      height: 16.w,
                    ),
                    Text(
                      "Nama Customer",
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Text(
                      widget.user.name ?? '',
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    _divider(),
                    SizedBox(
                      height: 12.w,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Text(
                      (widget.user.email ?? '').toString(),
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    _divider(),
                    SizedBox(
                      height: 12.w,
                    ),
                    Text(
                      "No Telp",
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Text(
                      widget.user.noTelp ?? '',
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    _divider(),
                    SizedBox(
                      height: 12.w,
                    ),
                    Text(
                      "Jenis Kelamin",
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Text(
                      (widget.user.jk == 'male' ? 'Pria' : 'Wanita'),
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    _divider(),
                    SizedBox(
                      height: 12.w,
                    ),
                    Text(
                      "Wilayah",
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Text(
                      widget.user.wilayah?.namaWilayah ?? '',
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    _divider(),
                    SizedBox(
                      height: 12.w,
                    ),
                    Text(
                      "Terdaftar",
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Text(
                      date,
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    _divider(),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _divider() {
    return Divider(
      height: 1.w,
      thickness: 0.5,
      color: Colors.black38,
    );
  }
}
