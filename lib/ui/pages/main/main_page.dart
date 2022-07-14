import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/home/home_page.dart';
import 'package:wasser_app/ui/pages/payment/payment_page.dart';
import 'package:wasser_app/ui/pages/profile/profile_page.dart';
import 'package:wasser_app/ui/pages/transaction/transaction_list_page.dart';

class MainPage extends StatefulWidget {
  static final mainScaffoldKey =
      GlobalKey<ScaffoldState>(debugLabel: 'mainScaffoldKey');
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;
  final List<Widget> itemPages = [
    const HomePage(),
    const PaymentPage(),
    const TransactionListPage(),
    const ProfilePage(),
  ];
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: MainPage.mainScaffoldKey,
        backgroundColor: Colors.white,
        extendBody: true,
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: itemPages,
        ),
        bottomNavigationBar: _buildFloatingBar());
  }

  Widget _buildFloatingBar() {
    return CustomNavigationBar(
      elevation: 0.6,
      iconSize: 30.w,
      selectedColor: colorPrimary,
      strokeColor: colorPrimary,
      unSelectedColor: Colors.grey[600],
      backgroundColor: Colors.white,
      borderRadius: Radius.circular(40.r),
      scaleFactor: 0.4,
      items: [
        CustomNavigationBarItem(
          icon: Image.asset("assets/icons/ic_home_off.png"),
          selectedIcon: Image.asset("assets/icons/ic_home_on.png"),
        ),
        CustomNavigationBarItem(
          icon: Image.asset("assets/icons/ic_bill_off.png"),
          selectedIcon: Image.asset("assets/icons/ic_bill_on.png"),
        ),
        CustomNavigationBarItem(
          icon: Image.asset("assets/icons/ic_transfer_off.png"),
          selectedIcon: Image.asset("assets/icons/ic_tranfer_on.png"),
        ),
        CustomNavigationBarItem(
          icon: Image.asset("assets/icons/ic_user_off.png"),
          selectedIcon: Image.asset("assets/icons/ic_user.png"),
        ),
      ],
      currentIndex: _index,
      onTap: (index) {
        _pageController.jumpToPage(index);
        setState(() {
          _index = index;
        });
      },
    );
  }
}
