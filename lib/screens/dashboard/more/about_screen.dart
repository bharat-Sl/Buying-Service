import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Buying Service",
            style: TextStyle(
                wordSpacing: 1,
                letterSpacing: 0.5,
                fontSize: 24,
                color: Colors.grey.shade300)),
        iconTheme: IconThemeData(color: Colors.grey.shade300),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Apps are the foundation of the mobile economy. Since the arrival of the iPhone in 2007 and the App Store in 2008, apps have become the principal way users have tapped into the smartphone revolution. Applications have helped create a number of multi-billion dollar industries. For example, mobile games now generate over 30bn in revenue per year, while apps from social media companies such as Facebook massively contribute to their multi-billion dollar revenues each quarter. This massive rise in popularity has had a knock-on effect for advertisers. Their widespread use has made it increasingly important for companies to use mobile as a key advertising channel. Whether companies are generating business through apps or advertising on mobile devices, applications have made mobile advertising a valuable industry on a global scale.",
                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(43, 43, 43, 1),
    );
  }
}
