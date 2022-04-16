import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wasser_app/shared/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey),
                    child: Image.asset(
                      "assets/images/logo.png",
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Text(
                      "Anis Humanisa",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Icon(
                      Icons.ten_k_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "0",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ],
              ),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorPrimary,
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              child: Text(
                "Akun",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/logo.png",
                      scale: 20,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Divider(
              height: 1,
              thickness: 0.5,
              color: Colors.black54,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/logo.png",
                      scale: 20,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              thickness: 0.5,
              color: Colors.black54,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/logo.png",
                      scale: 20,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              thickness: 0.5,
              color: Colors.black54,
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              child: Text(
                "Khusus Untuk Kamu",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/logo.png",
                      scale: 20,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              thickness: 0.5,
              color: Colors.black54,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/logo.png",
                      scale: 20,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              thickness: 0.5,
              color: Colors.black54,
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              child: Text(
                "Khusus Untuk Kamu",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/logo.png",
                      scale: 20,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              thickness: 0.5,
              color: Colors.black54,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/logo.png",
                      scale: 20,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              thickness: 0.5,
              color: Colors.black54,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Text(
                "Logout",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
