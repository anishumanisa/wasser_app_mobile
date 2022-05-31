import 'package:flutter/material.dart';

class PaymentListPage extends StatefulWidget {
  const PaymentListPage({Key? key}) : super(key: key);

  @override
  _PaymentListPageState createState() => _PaymentListPageState();
}

class _PaymentListPageState extends State<PaymentListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(190), // Set this height
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: const Color(0xff1BAB87),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.white24)),
                      child: const Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    const Text(
                      "Lorem Ipsum",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white24)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 12,
                      ),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Nama Customer",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Anis Humanisa ( Rt 03 )",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "ID Pelanggan",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "ID09210921",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "No Telp",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "0821980239023",
                                style: TextStyle(
                                    fontSize: 12,
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
                                "Wilayah",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "RT 03",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Sumber",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Danau",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Terdaftar",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "28 Mei 2022",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          physics: const ScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ], color: Colors.white, borderRadius: BorderRadius.circular(6)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/ic_profile.png",
                              scale: 3.2,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Tedi Alamsyah",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "Maret 2022",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              height: 20,
                              decoration: BoxDecoration(
                                color: const Color(0xff1BAB87),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text(
                                "Berhasil",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Meteran Awal",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "100",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Meteran Akhir",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "100",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Kubikasi",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "100",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Total : ",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Rp 100.000",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 26),
                          alignment: Alignment.center,
                          height: 26,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: const Color(0xff1BAB87),
                              )),
                          child: const Text(
                            "Bayar",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1BAB87),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ], color: Colors.white, borderRadius: BorderRadius.circular(6)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/ic_profile.png",
                              scale: 3.2,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Tedi Alamsyah",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "Maret 2022",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              height: 20,
                              decoration: BoxDecoration(
                                color: const Color(0xff1BAB87),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text(
                                "Berhasil",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Meteran Awal",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "100",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Meteran Akhir",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "100",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Kubikasi",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "100",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Total : ",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Rp 100.000",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 26),
                          alignment: Alignment.center,
                          height: 26,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: const Color(0xff1BAB87),
                              )),
                          child: const Text(
                            "Bayar",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1BAB87),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ], color: Colors.white, borderRadius: BorderRadius.circular(6)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/ic_profile.png",
                              scale: 3.2,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Tedi Alamsyah",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "Maret 2022",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              height: 20,
                              decoration: BoxDecoration(
                                color: const Color(0xff1BAB87),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text(
                                "Berhasil",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Meteran Awal",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "100",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Meteran Akhir",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "100",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Kubikasi",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "100",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Total : ",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Rp 100.000",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 26),
                          alignment: Alignment.center,
                          height: 26,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: const Color(0xff1BAB87),
                              )),
                          child: const Text(
                            "Bayar",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1BAB87),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ], color: Colors.white, borderRadius: BorderRadius.circular(6)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/ic_profile.png",
                              scale: 3.2,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Tedi Alamsyah",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "Maret 2022",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              height: 20,
                              decoration: BoxDecoration(
                                color: const Color(0xff1BAB87),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text(
                                "Berhasil",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Meteran Awal",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "100",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Meteran Akhir",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "100",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Kubikasi",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "100",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Total : ",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Rp 100.000",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 26),
                          alignment: Alignment.center,
                          height: 26,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: const Color(0xff1BAB87),
                              )),
                          child: const Text(
                            "Bayar",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1BAB87),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget _divider() {
    return const Divider(
      height: 1,
      thickness: 0.5,
      color: Colors.black12,
    );
  }
}
