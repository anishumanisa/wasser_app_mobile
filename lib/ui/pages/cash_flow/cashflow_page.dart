import 'package:flutter/material.dart';
import 'package:wasser_app/shared/colors.dart';

class CashFlowPage extends StatefulWidget {
  const CashFlowPage({Key? key}) : super(key: key);

  @override
  _CashFlowPageState createState() => _CashFlowPageState();
}

class _CashFlowPageState extends State<CashFlowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              color: colorPrimary,
              child: Column(
                children: [
                  Container(
                    color: colorPrimary,
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Rincian Saldo Kas",
                          style: TextStyle(color: Colors.white),
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
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/images/logo.png",
                            scale: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 20,
                          width: 125,
                          decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            "Kantong utama",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.black54, fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            "Kantong Utama",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          child: Text(
                            "Rp.20000",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Tambah Uang",
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Pindahkan Uang",
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Kirim dan Bayar",
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    height: 60,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/images/logo.png",
                            scale: 12,
                          ),
                        ),
                        Container(
                          child: Text(
                            "Hubungan Ke Kartu",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Icon(Icons.eleven_mp_outlined),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    style: const TextStyle(color: Colors.black),
                    scrollPadding: EdgeInsets.only(bottom: 100),
                    decoration: InputDecoration(
                      hintText: "Cari Nama Pelanggan",
                      prefixIcon: Icon(Icons.search),
                      hintStyle: const TextStyle(color: Colors.black54),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text("Maret 2022"),
                      ),
                      Spacer(),
                      Container(
                        child: Text("Diperbaharui Hari Ini,19.50"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                            child: Text("Pajak Bunga"),
                          ),
                          Container(
                            child: Text(
                              "28 Mar 2022",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text("Pajak Bunga"),
                          ),
                          Container(
                            child: Text(
                              "28 Mar 2022",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                            child: Text("Pajak Bunga"),
                          ),
                          Container(
                            child: Text(
                              "28 Mar 2022",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text("Pajak Bunga"),
                          ),
                          Container(
                            child: Text(
                              "28 Mar 2022",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
