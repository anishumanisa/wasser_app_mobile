import 'package:flutter/material.dart';

class TransactionInvoicePage extends StatefulWidget {
  const TransactionInvoicePage({Key? key}) : super(key: key);

  @override
  _TransactionInvoicePageState createState() => _TransactionInvoicePageState();
}

class _TransactionInvoicePageState extends State<TransactionInvoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction Invoice"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        physics: BouncingScrollPhysics(),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              height: 600,
              decoration: BoxDecoration(color: Colors.grey.shade400),
              child: Column(
                children: [
                  SizedBox(
                    height: 26,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50)),
                    child: Image.asset(
                      "assets/images/logo.png",
                      scale: 12,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    color: Colors.black26,
                    thickness: 1,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Amount"),
                        ),
                        Spacer(),
                        Text("ldakldhaks")
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Amount"),
                        ),
                        Spacer(),
                        Text("ldakldhaks")
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Amount"),
                        ),
                        Spacer(),
                        Text("ldakldhaks")
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Amount"),
                        ),
                        Spacer(),
                        Text("ldakldhaks")
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Amount"),
                        ),
                        Spacer(),
                        Text("ldakldhaks")
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Amount"),
                        ),
                        Spacer(),
                        Text("ldakldhaks")
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Amount"),
                        ),
                        Spacer(),
                        Text("ldakldhaks")
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    child: Row(
                      children: [
                        Text("Sataus"),
                        Spacer(),
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            "Success",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Download Receipt",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    height: 50,
                    width: 320,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
