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
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: const Text(
          "Account",
          style: TextStyle(color: Colors.black),
        ),
      ),
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
              return Row(
                children: [
                  SizedBox(
                    height: 42.w,
                    width: 42.w,
                    child: Image.asset(
                      "assets/icons/${user.avatar}",
                      height: 18.w,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name ?? '',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.w,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      Text(
                        user.email ?? '-',
                        style: TextStyle(
                            color: Colors.black38,
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
                  fontSize: 14.w,
                  color: Colors.black45),
            ),
            SizedBox(
              height: 16.w,
            ),
            Builder(builder: (context) {
              var user = context.select((ProfileViewModel vm) => vm.user);
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RouteList.profileDetail,
                      arguments: user);
                },
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/ic_user.png",
                      scale: 14.w,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.w,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.w,
                      color: Colors.grey,
                    )
                  ],
                ),
              );
            }),
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
                    "assets/icons/ic_resume.png",
                    scale: 14.w,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "User Management",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.w,
                        fontWeight: FontWeight.w600),
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
                  "assets/icons/ic_about.png",
                  scale: 14.w,
                ),
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  "About",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.w,
                      fontWeight: FontWeight.w600),
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
            GestureDetector(
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/ic_app.png",
                    scale: 14.w,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "App Version",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.w,
                        fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  const Text(
                    "v1.1.1",
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            _divider(),
            SizedBox(
              height: 22.w,
            ),
            GestureDetector(
              onTap: () {
                viewModel.logout();
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteList.login, (Route<dynamic> route) => false);
              },
              child: Text(
                "Logout",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 16.w),
              ),
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
