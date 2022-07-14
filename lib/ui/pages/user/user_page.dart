import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/common/widgets/loading_state.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/user/repository/user_respository.dart';
import 'package:wasser_app/ui/pages/user/view_model/user_view_model.dart';

class UserPages extends StatefulWidget {
  const UserPages({Key? key}) : super(key: key);

  @override
  _UserPagesState createState() => _UserPagesState();
}

class _UserPagesState extends State<UserPages> {
  @override
  Widget build(BuildContext context) {
    return BaseView<UserViewModel>(
      key: const ValueKey('user-view'),
      vmBuilder: (context) => UserViewModel(userRepository: UserRepository()),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, UserViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("List User"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 20.w),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Builder(builder: (context) {
              var userList =
                  context.select((UserViewModel vm) => vm.userList.data ?? []);

              var isLoading =
                  context.select((UserViewModel vm) => vm.isLoading);

              if (isLoading) {
                return const LoadingState();
              }
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: userList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = userList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RouteList.userDetail,
                              arguments: item)
                          .whenComplete(() async {
                        await viewModel.getUserList();
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 8.w,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/icons/${item.avatar}",
                              height: 30.w,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.name ?? '',
                                  style: TextStyle(
                                    fontSize: 14.w,
                                    fontWeight: FontWeight.bold,
                                    color: colorPrimary,
                                  ),
                                ),
                                SizedBox(
                                  height: 6.w,
                                ),
                                Text(
                                  item.wilayah?.namaWilayah ?? '',
                                  style: TextStyle(
                                      fontSize: 12.w, color: Colors.black45),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3.w, horizontal: 8.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    color: colorAccentPrimary,
                                  ),
                                  child: Text(
                                    item.role?.toUpperCase() ?? '',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 10.w,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: 6.w,
                                ),
                                Text(
                                  item.noTelp ?? '',
                                  style: TextStyle(
                                      fontSize: 12.w, color: Colors.black45),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                  );
                },
              );
            }),
          ],
        ),
      ),
      bottomNavigationBar: Builder(builder: (context) {
        return BottomAppBar(
          child: Container(
            padding: EdgeInsets.only(
                top: 16.w, left: 16.w, bottom: 16.w, right: 16.w),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: kNeutral200, width: 1.w),
              ),
            ),
            child: SizedBox(
              height: 36.w,
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(colorPrimary),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(RouteList.userManage)
                      .whenComplete(() async {
                    await viewModel.getUserList();
                  });
                },
                child: Text(
                  "Tambah User".toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 12.w),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
