import 'package:flutter/material.dart';

class PaymentReceiptPage extends StatefulWidget {
  const PaymentReceiptPage({Key? key}) : super(key: key);

  @override
  _PaymentReceiptPageState createState() => _PaymentReceiptPageState();
}

class _PaymentReceiptPageState extends State<PaymentReceiptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirm Payment"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade100,
                ),
                width: 350,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
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
                    const SizedBox(
                      height: 30,
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.grey.shade500,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Text("Total Bayar"),
                        ),
                        const Spacer(),
                        Container(
                          child: const Text("Rp 197.000"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Text("Nama "),
                        ),
                        const Spacer(),
                        Container(
                          child: const Text("Anis Humanisa "),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Text("Nama Bank"),
                        ),
                        const Spacer(),
                        Container(
                          child: const Text("BRI"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Text("Metode Pembayaran"),
                        ),
                        const Spacer(),
                        Container(
                          child: const Text("Rp 8743984"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Text("Tanggal Transaksi"),
                        ),
                        const Spacer(),
                        Container(
                          child: const Text("Rp 8743984"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Text("ID  Transaksi"),
                        ),
                        const Spacer(),
                        Container(
                          child: const Text("Rp 8743984"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Text("Status"),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 2, vertical: 2),
                          width: 85,
                          decoration: BoxDecoration(
                              color: const Color(0xff1BAB87),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            "Sudah Dibayar",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: const Text(
                  "Download Invoice",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xff1BAB87),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
