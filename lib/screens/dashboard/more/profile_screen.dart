import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(252, 207, 202, 1),
            Color.fromRGBO(251, 254, 216, 1)
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text("Profile",
              style: TextStyle(
                  wordSpacing: 1,
                  letterSpacing: 0.5,
                  fontSize: 24,
                  color: Colors.black)),
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
                        SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              hintText: "First name",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w600)),
                          cursorColor: Colors.black,
                          cursorHeight: 24,
                        ),
                        SizedBox(height: 14),
                        TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              hintText: "Last name",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w600)),
                          cursorColor: Colors.black,
                          cursorHeight: 24,
                        ),
                        SizedBox(height: 14),
                        TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              hintText: "Email",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w600)),
                          cursorColor: Colors.black,
                          cursorHeight: 24,
                        ),
                        SizedBox(height: 14),
                        TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              hintText: "Phone number",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w700)),
                          cursorColor: Colors.black,
                          cursorHeight: 24,
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 40),
              Container(
                width: width - 60,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 21),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
