import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:wasser_app/common/widgets/flash_bar_mixin.dart';
import 'package:wasser_app/core/base/base_view.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/user_manage/repository/user_manage_repository.dart';
import 'package:wasser_app/ui/pages/user_manage/view_model/user_manage_view_model.dart';
import 'package:wasser_app/ui/pages/user_manage/widget/wilayah_bottom_sheet_body.dart';
import 'package:wasser_app/ui/pages/user_manage/widget/wilayah_bottom_sheet_footer.dart';
import 'package:wasser_app/ui/pages/user_manage/widget/wilayah_bottom_sheet_header.dart';

class UserManagePage extends StatefulWidget {
  const UserManagePage({Key? key}) : super(key: key);

  @override
  _UserManagePageState createState() => _UserManagePageState();
}

class _UserManagePageState extends State<UserManagePage> with FlashBarMixin {
  final formGlobalKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _noHpController = TextEditingController();
  final _dateOfBirthController = TextEditingController();
  final _addressController = TextEditingController();
  final _regionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<UserManageViewModel>(
      key: const ValueKey('user-manage-view'),
      vmBuilder: (context) => UserManageViewModel(
          nameController: _nameController,
          emailController: _emailController,
          noHpController: _noHpController,
          addressController: _addressController,
          passwordController: _passwordController,
          dateController: _dateOfBirthController,
          regionController: _regionController,
          userManageRepository: UserManageRepository()),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, UserManageViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("Tambah User"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        physics: const ScrollPhysics(),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Form(
              key: formGlobalKey,
              child: Container(
                color: Colors.white54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildMiddle(context),
                    SizedBox(height: 16.w),
                    _buildBottom(context),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
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
              "Nama",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 6.w,
            ),
            Builder(builder: (context) {
              return TextFormField(
                controller: _nameController,
                style: const TextStyle(color: Colors.black),
                scrollPadding: EdgeInsets.only(bottom: 100.w),
                decoration: InputDecoration(
                  hintText: "Nama",
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
              "Email",
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
                  hintText: "Email",
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
              "No Hp",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 6.w,
            ),
            Builder(builder: (context) {
              return TextFormField(
                controller: _noHpController,
                style: const TextStyle(color: Colors.black),
                scrollPadding: EdgeInsets.only(bottom: 100.w),
                decoration: InputDecoration(
                  hintText: "No Hp",
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
              "Jenis Kelamin",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 12.w,
            ),
            SizedBox(
              height: 24.w,
              child: Builder(builder: (context) {
                var method =
                    context.select((UserManageViewModel vm) => vm.listGender);
                var selected = context
                    .select((UserManageViewModel vm) => vm.selectedGender);

                return ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 36.w,
                    );
                  },
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: method.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var item = method[index];
                    return GestureDetector(
                      onTap: () {
                        context
                            .read<UserManageViewModel>()
                            .selectGender(item.code ?? 'male');
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 8.w),
                        child: Row(
                          children: [
                            Icon(
                              item.code == selected
                                  ? Icons.radio_button_checked_outlined
                                  : Icons.radio_button_off_outlined,
                              color: item.code == selected
                                  ? colorPrimary
                                  : Colors.grey,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              item.title ?? '-',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.w,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
        SizedBox(height: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Tanggal Lahir",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 6.w,
            ),
            Builder(builder: (context) {
              return DateTimePicker(
                controller: _dateOfBirthController,
                decoration: InputDecoration(
                  hintText: "Tanggal Lahir",
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
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                dateLabelText: 'Date',
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) {
                  print("val");
                },
              );
            }),
          ],
        ),
        SizedBox(height: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Alamat",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 6.w,
            ),
            Builder(builder: (context) {
              return TextFormField(
                controller: _addressController,
                maxLines: 3,
                style: const TextStyle(color: Colors.black),
                scrollPadding: EdgeInsets.only(bottom: 100.w),
                decoration: InputDecoration(
                  hintText: "Alamat",
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
              "Wilayah",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 6.w,
            ),
            Builder(builder: (context) {
              return TextFormField(
                onTap: () {
                  showAsBottomSheet(context: context);
                },
                controller: _regionController,
                style: const TextStyle(color: Colors.black),
                scrollPadding: EdgeInsets.only(bottom: 100.w),
                decoration: InputDecoration(
                  hintText: "Wilayah",
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
      ],
    );
  }

  Widget _buildBottom(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Builder(builder: (context) {
          return SizedBox(
            height: 48.w,
            width: double.infinity,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(colorPrimary),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
              onPressed: () {
                if (formGlobalKey.currentState!.validate()) {
                  formGlobalKey.currentState!.save();

                  _onSubmit(context, context.read<UserManageViewModel>());
                  FocusScope.of(context).unfocus();

                  FocusScope.of(context).unfocus();
                }
              },
              child: Text(
                "Simpan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.w,
                    fontWeight: FontWeight.w600),
              ),
            ),
          );
        }),
      ],
    );
  }

  void showAsBottomSheet({required BuildContext context}) {
    var viewModel = context.read<UserManageViewModel>();
    context.read<UserManageViewModel>().setupWilayahBottomSheet();

    showSlidingBottomSheet(context, builder: (context) {
      return SlidingSheetDialog(
          elevation: 8,
          cornerRadius: 16.r,
          snapSpec: const SnapSpec(
            snap: true,
            snappings: [0.7, 0.9, 1.0],
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          headerBuilder: (context, state) {
            return WilayahBottomSheetHeader();
          },
          builder: (context, state) {
            return ListenableProvider.value(
              value: viewModel,
              child: WilayahBottomSheetBody(),
            );
          },
          footerBuilder: (context, state) {
            return ListenableProvider.value(
                value: viewModel, child: WilayahBottomSheetFooter());
          });
    });
  }

  Future<void> _onSubmit(
      BuildContext context, UserManageViewModel viewModel) async {
    var response = await viewModel.createUserRole();
    var meta = response.meta;

    if (meta?.status ?? false) {
      showCustomFlash(context, "yeeay, Data Berhasil diTambahkan :)");
      Future.delayed(const Duration(milliseconds: 1000), () {
        Navigator.pop(context);
      });
    } else {
      showCustomFlash(context, "Upss, Data diTambahkan Gagal :(");
    }
  }
}
