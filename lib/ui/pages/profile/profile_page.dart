import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Column(
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
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Anis Humanisa",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "1029019120129",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            const Text(
              "Personal Info",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black45),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  scale: 20,
                ),
                const Text(
                  "Profile",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            _divider(),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  scale: 20,
                ),
                const Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
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
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  scale: 20,
                ),
                const Text(
                  "Edit Profile",
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            _divider(),
            const SizedBox(
              height: 22,
            ),
            const Text(
              "General",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black45),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  scale: 20,
                ),
                const Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
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
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  scale: 20,
                ),
                const Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
                )
              ],
            ),
            _divider(),
            const SizedBox(
              height: 22,
            ),
            const Text(
              "Logout",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 16),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
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
