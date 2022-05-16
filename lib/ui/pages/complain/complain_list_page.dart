import 'package:flutter/material.dart';

class ComplainListPage extends StatefulWidget {
  const ComplainListPage({Key? key}) : super(key: key);

  @override
  _ComplainListPageState createState() => _ComplainListPageState();
}

class _ComplainListPageState extends State<ComplainListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        physics: const BouncingScrollPhysics(),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Builder(builder: (context) {
              return TextFormField(
                style: const TextStyle(color: Colors.black),
                scrollPadding: const EdgeInsets.only(bottom: 100),
                decoration: InputDecoration(
                  hintText: "Cari Nama Pelanggan",
                  prefixIcon: const Icon(Icons.search),
                  hintStyle: const TextStyle(color: Colors.black54),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
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
              );
            }),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        scale: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Anis Humanisa",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "24 April 2022",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                      Spacer(),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Sudah Diproses",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        height: 15,
                        width: 95,
                        decoration: BoxDecoration(
                            color: Colors.green.shade400,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.2,
                    color: Colors.black,
                  ),
                  Container(
                    child: Text(
                      "Judul Komplenan",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce metus lacus, fermentum eget commodo eu,"
                      " consequat sed arcu. Suspendisse ut magna eleifend nulla posuere finibus."),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                      alignment: Alignment.bottomRight,
                      child: Text("Selengkapnya"))
                ],
              ),
              height: 235,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade400,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        scale: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Anis Humanisa",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "24 April 2022",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                      Spacer(),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Sudah Diproses",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        height: 15,
                        width: 95,
                        decoration: BoxDecoration(
                            color: Colors.green.shade400,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.2,
                    color: Colors.black,
                  ),
                  Container(
                    child: Text(
                      "Judul Komplenan",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce metus lacus, fermentum eget commodo eu,"
                      " consequat sed arcu. Suspendisse ut magna eleifend nulla posuere finibus."),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                      alignment: Alignment.bottomRight,
                      child: Text("Selengkapnya"))
                ],
              ),
              height: 235,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade400,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        scale: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Anis Humanisa",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "24 April 2022",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                      Spacer(),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Sudah Diproses",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        height: 15,
                        width: 95,
                        decoration: BoxDecoration(
                            color: Colors.green.shade400,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.2,
                    color: Colors.black,
                  ),
                  Container(
                    child: Text(
                      "Judul Komplenan",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce metus lacus, fermentum eget commodo eu,"
                      " consequat sed arcu. Suspendisse ut magna eleifend nulla posuere finibus."),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                      alignment: Alignment.bottomRight,
                      child: Text("Selengkapnya"))
                ],
              ),
              height: 235,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade400,
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
