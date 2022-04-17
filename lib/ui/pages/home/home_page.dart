import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wasser_app/shared/colors.dart';
import 'package:wasser_app/ui/pages/home/widget/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        physics: BouncingScrollPhysics(),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          //children: [CarouselSliders()],
          children: [
            Row(
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/logo.png",
                    scale: 15,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Hello, Anis Humanisa",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      child: Text(
                        "Selamat datang di wasser",
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  child: Icon(
                    Icons.notifications_sharp,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.all(24),
              height: 170,
              decoration: BoxDecoration(
                  color: colorPrimary, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Rp. 490000",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Spacer(),
                      Container(
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Your balance",
                    style: TextStyle(color: Colors.white60),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "BAYAR YUK !",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: colorPrimary),
                    ),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "Favorites",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Lihat Semua",
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: colorPrimary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(
                            Icons.payment,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "PAYMENT",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: colorPrimary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(
                            Icons.wallet_travel,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "TRANSAKSI",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: colorPrimary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(
                            Icons.wallet_travel,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "PENCATATAN",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: colorPrimary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(
                            Icons.analytics_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "LAPORAN",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Icon(
                            Icons.payments_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Total saldo kas",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            "Rp. 80.000.000",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Icon(
                            Icons.account_circle_sharp,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Pengguna Aktif",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            "350",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Icon(
                            Icons.notifications_active,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Total saldo kas",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            "Rp. 80.000.000",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.red.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Icon(
                            Icons.content_paste_sharp,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Penggunaan M3",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            "500 M3",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
