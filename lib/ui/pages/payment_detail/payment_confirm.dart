import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        backgroundColor: const Color(0xff1D3A71),
        title: const Text("Payment Confirm"),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          physics: const ScrollPhysics(),
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(
                  "assets/images/ic_profile.png",
                  scale: 1,
                ),
              ),
              Column(
                children: const [
                  Text(
                    "Anis Humanisa",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "ID010291202",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                children: const [
                  Text(
                    "Transaction Details",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff1D3A71),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.white24)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Meteran Awal",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "100",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Meteran Akhir",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "200",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Kubikasi",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "10 m",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 28,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Bulan",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Maret",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Wilayah",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "RT 03",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Tanggal",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "22 Juni 2022",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _divider(),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Admin Fee",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        Text(
                          "Rp 5.000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Sub Total",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        Text(
                          "Rp 100.000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    _divider(),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        Text(
                          "Rp 105.000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Payment Method",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.monetization_on),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Bank Transfer",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.check_circle_outline,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.monetization_on),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Manual",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.check_circle_sharp,
                    color: Color(0xff1D3A71),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Amount",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6.w,
                  ),
                  TextFormField(
                    style: const TextStyle(color: Colors.black),
                    scrollPadding: EdgeInsets.only(bottom: 100.w),
                    decoration: InputDecoration(
                      hintText: "Amount",
                      hintStyle: const TextStyle(color: Colors.black54),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.w, horizontal: 10.w),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide:
                            const BorderSide(color: Colors.black26, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide:
                            const BorderSide(color: Colors.black26, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide:
                            const BorderSide(color: Colors.black26, width: 1),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Note",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6.w,
                  ),
                  TextFormField(
                    style: const TextStyle(color: Colors.black),
                    scrollPadding: EdgeInsets.only(bottom: 100.w),
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "Note...",
                      hintStyle: const TextStyle(color: Colors.black54),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.w, horizontal: 10.w),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              _buildButtonConfirm(context)
            ],
          )),
    );
  }

  Widget _buildButtonConfirm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Builder(builder: (context) {
          return SizedBox(
            height: 44.w,
            width: double.infinity,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff1D3A71)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),
              ),
              onPressed: () {
                FocusScope.of(context).unfocus();
              },
              child: const Text(
                "Bayar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          );
        }),
      ],
    );
  }

  Widget _divider() {
    return const Divider(
      height: 1,
      thickness: 0.5,
      color: Colors.white,
    );
  }
}
