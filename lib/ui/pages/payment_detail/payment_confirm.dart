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
                  color: Colors.grey.shade400,
                ),
                width: 350,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.red,
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
                          child: Text("Amount (USD)"),
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
                          child: Text("Amount (USD)"),
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
                          child: Text("Amount (USD)"),
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
                          child: Text("Amount (USD)"),
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
                          child: Text("Amount (USD)"),
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
                          child: Text("Amount (USD)"),
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
                          child: Text("Amount (USD)"),
                        ),
                        Spacer(),
                        Container(
                          width: 100,
                          child: Text("Anis Humansia fernanda"),
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
                height: 26,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Change",
                  style: TextStyle(color: Colors.green),
                  textAlign: TextAlign.center,
                ),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Confirm Change",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
