import 'package:flutter/material.dart';

class PaymentConfirmPages extends StatefulWidget {
  const PaymentConfirmPages({Key? key}) : super(key: key);

  @override
  _PaymentConfirmPagesState createState() => _PaymentConfirmPagesState();
}

class _PaymentConfirmPagesState extends State<PaymentConfirmPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Payment"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade100,
                ),
                width: 350,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(50)),
                      child: Image.asset(
                        "assets/images/logo.png",
                        scale: 15,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.grey.shade500,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text("Total Bayar"),
                        ),
                        Spacer(),
                        Container(
                          child: Text("Rp 197.000"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text("Nama "),
                        ),
                        Spacer(),
                        Container(
                          child: Text("Anis Humanisa "),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text("Nama Bank"),
                        ),
                        Spacer(),
                        Container(
                          child: Text("BRI"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text("Metode Pembayaran"),
                        ),
                        Spacer(),
                        Container(
                          child: Text("Rp 8743984"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text("Tanggal Transaksi"),
                        ),
                        Spacer(),
                        Container(
                          child: Text("Rp 8743984"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text("ID  Transaksi"),
                        ),
                        Spacer(),
                        Container(
                          child: Text("Rp 8743984"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text("Status"),
                        ),
                        Spacer(),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                          width: 85,
                          decoration: BoxDecoration(
                              color: Color(0xff1BAB87),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Sudah Dibayar",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Download Invoice",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xff1BAB87),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
