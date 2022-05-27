import 'package:flutter/material.dart';

class WaterBillPages extends StatefulWidget {
  const WaterBillPages({Key? key}) : super(key: key);

  @override
  _WaterBillPagesState createState() => _WaterBillPagesState();
}

class _WaterBillPagesState extends State<WaterBillPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
        physics: BouncingScrollPhysics(),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(100)),
                  child: Image.asset(
                    "assets/images/drop.png",
                    scale: 7,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Pay Water Bill",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 300,
                  child: Text(
                    "Pay water bills safely, conveniently & easily."
                    "you can pay anytime and anywhere!",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey.shade200,
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
            Container(
              child: Text(
                "Customer ID",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(5)),
            )
          ],
        ),
      ),
    );
  }
}
