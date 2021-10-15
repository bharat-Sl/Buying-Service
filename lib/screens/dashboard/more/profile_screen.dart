import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",
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
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: "First name",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.4),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.4),
                            ),
                            hintStyle: TextStyle(
                                color: Colors.white54,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.w600)),
                        cursorColor: Colors.white54,
                        cursorHeight: 24,
                      ),
                      SizedBox(height: 14),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: "Last name",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.4),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.4),
                            ),
                            hintStyle: TextStyle(
                                color: Colors.white54,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.w600)),
                        cursorColor: Colors.white54,
                        cursorHeight: 24,
                      ),
                      SizedBox(height: 14),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: "Email",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.4),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.4),
                            ),
                            hintStyle: TextStyle(
                                color: Colors.white54,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.w600)),
                        cursorColor: Colors.white54,
                        cursorHeight: 24,
                      ),
                      SizedBox(height: 14),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: "Phone number",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.4),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.4),
                            ),
                            hintStyle: TextStyle(
                                color: Colors.white54,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.w700)),
                        cursorColor: Colors.white,
                        cursorHeight: 24,
                      ),
                    ],
                  )),
            ),
            SizedBox(height: 40),
            Container(
              width: width - 27,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Save",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9))),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(43, 43, 43, 1),
    );
  }
}
