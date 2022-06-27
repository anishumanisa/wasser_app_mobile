import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/ui/pages/profile/repository/profile_repository.dart';
import 'package:wasser_app/ui/pages/profile/view_model/profile_view_model.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileViewModel>(
      key: const ValueKey('transaction-list-view'),
      vmBuilder: (context) =>
          ProfileViewModel(profileRepository: ProfileRepository()),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, ProfileViewModel viewModel) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Builder(builder: (context) {
              var user = context.select((ProfileViewModel vm) => vm.user);
              return Column(
                children: [
                  Container(
                    height: 70.w,
                    width: 70.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r),
                        color: Colors.grey),
                    child: Image.asset(
                      "assets/images/logo.png",
                    ),
                  ),
                  SizedBox(
                    height: 20.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        user.name ?? '',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.w,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      Text(
                        user.noPelanggan.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.w,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  )
                ],
              );
            }),
            SizedBox(
              height: 22.w,
            ),
            Text(
              "Personal Info",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.w,
                  color: Colors.black45),
            ),
            SizedBox(
              height: 16.w,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  scale: 20.w,
                ),
                Text(
                  "Profile",
                  style: TextStyle(color: Colors.black, fontSize: 16.w),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15.w,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(
              height: 8.w,
            ),
            _divider(),
            SizedBox(
              height: 10.w,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteList.user);
              },
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    scale: 20.w,
                  ),
                  Text(
                    "User Management",
                    style: TextStyle(color: Colors.black, fontSize: 16.w),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15.w,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            _divider(),
            SizedBox(
              height: 10.w,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  scale: 20.w,
                ),
                Text(
                  "Lorem Ipsum",
                  style: TextStyle(color: Colors.black, fontSize: 16.w),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15.w,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(
              height: 10.w,
            ),
            _divider(),
            SizedBox(
              height: 22.w,
            ),
            Text(
              "General",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.w,
                  color: Colors.black45),
            ),
            SizedBox(
              height: 16.w,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  scale: 20.w,
                ),
                Text(
                  "Lorem Ipsum",
                  style: TextStyle(color: Colors.black, fontSize: 16.w),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15.w,
                  color: Colors.grey,
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
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  scale: 20.w,
                ),
                Text(
                  "Lorem Ipsum",
                  style: TextStyle(color: Colors.black, fontSize: 16.w),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15.w,
                  color: Colors.grey,
                )
              ],
            ),
            _divider(),
            SizedBox(
              height: 22.w,
            ),
            Text(
              "Logout",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 16.w),
            ),
            SizedBox(
              height: 25.w,
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
      color: Colors.black12,
    );
  }
}
