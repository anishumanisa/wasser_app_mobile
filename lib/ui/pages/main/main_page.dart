import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:wasser_app/ui/pages/home/home_page.dart';
import 'package:wasser_app/ui/pages/input_meter/input_meter_page.dart';
import 'package:wasser_app/ui/pages/payment_detail/payment_confirm_page.dart';
import 'package:wasser_app/ui/pages/transaction/Transaction_List.dart';

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
    const TransactionListPages(),
    const InputMeterPage(),
    const PaymentConfirmPage()
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
        backgroundColor: const Color(0xfff5f6fa),
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
      iconSize: 30.0,
      selectedColor: Color(0xff1D3A71),
      strokeColor: const Color(0xff1D3A71),
      unSelectedColor: Colors.grey[600],
      backgroundColor: Colors.white,
      borderRadius: const Radius.circular(40.0),
      scaleFactor: 0.4,
      items: [
        CustomNavigationBarItem(
          icon: const Icon(Icons.home),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.agriculture_sharp),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.note),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.account_circle_sharp),
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
