import 'package:flutter/material.dart';

class MemberPaymentPage extends StatefulWidget {
  const MemberPaymentPage({Key? key}) : super(key: key);

  @override
  _MemberPaymentPageState createState() => _MemberPaymentPageState();
}

class _MemberPaymentPageState extends State<MemberPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Member"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/ic_profile.png",
                          scale: 2,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Anis Humanisa - Rt 03",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "ID1012012012",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Color(0xff1D3A71),
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: Colors.black26)),
                          child: const Icon(
                            Icons.visibility_sharp,
                            size: 15,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  _divider()
                ],
              );
            }),
      ),
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
