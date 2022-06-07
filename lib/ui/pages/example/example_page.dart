import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/example/view_model/example_view_model.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final ExampleViewModel viewModel = ExampleViewModel();

  @override
  void initState() {
    super.initState();
    viewModel.fetchExample();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("Example Page"),
      ),
      body: ChangeNotifierProvider<ExampleViewModel>(
        create: (BuildContext context) => viewModel,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            vertical: 16.w,
          ),
          child: Consumer<ExampleViewModel>(
            builder: (context, provider, child) {
              print(viewModel.user.email);
              return Container(
                  padding: EdgeInsets.only(top: 8.w, right: 16.w, left: 16.w),
                  child: Text(viewModel.user.email ?? ''));
              // return ListView.builder(
              //   shrinkWrap: true,
              //   itemCount: viewModel.user.length,
              //   itemBuilder: (context, index) {
              //     var item = viewModel.user[index];
              //     return Container(
              //         padding:
              //             EdgeInsets.only(top: 8.w, right: 16.w, left: 16.w),
              //         child: Text(item.email ?? ''));
              //   },
              // );
            },
          ),
        ),
      ),
    );
  }
}
