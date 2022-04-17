import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/cash_flow/cashflow_page.dart';
import 'package:wasser_app/ui/pages/cash_flow_manage/cash_flow_manage_page.dart';
import 'package:wasser_app/ui/pages/home/home_page.dart';
import 'package:wasser_app/ui/pages/member/member_page.dart';
import 'package:wasser_app/ui/pages/payment_detail/payment_detail_page.dart';
import 'package:wasser_app/ui/pages/payment/payment_page.dart';
import 'package:wasser_app/ui/pages/profile/profile_page.dart';

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
    HomePage(),
    PaymentDetailPage(),
    PaymentPage(),
    ProfilePage()
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
        backgroundColor: Color(0xfff5f6fa),
        extendBody: true,
        body: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          children: itemPages,
        ),
        bottomNavigationBar: _buildFloatingBar());
  }

  Widget _buildFloatingBar() {
    return CustomNavigationBar(
      elevation: 0.6,
      iconSize: 30.0,
      selectedColor: colorPrimary,
      strokeColor: Color(0x300c18fb),
      unSelectedColor: Colors.grey[600],
      backgroundColor: Colors.white,
      borderRadius: Radius.circular(40.0),
      scaleFactor: 0.4,
      items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.home),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.agriculture_sharp),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.note),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.account_circle_sharp),
        ),
      ],
      currentIndex: _index,
      onTap: (index) {
        _pageController.jumpToPage(index);
        setState(() {
          _index = index;
        });
      },
      // isFloating: true,
    );
  }
}
