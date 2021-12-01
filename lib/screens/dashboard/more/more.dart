import 'package:buying_service/screens/dashboard/more/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about_screen.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  Future contactSupport(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 250,
          color: Color.fromRGBO(43, 43, 43, 1),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text("Contact support",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.w500)),
              ),
              SizedBox(height: 2),
              Divider(color: Colors.grey.shade600),
              InkWell(
                onTap: () async {
                  await launch("tel://9602901242");
                },
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.white),
                  title: Text(
                    "+91 9602901242",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                ),
              ),
              Divider(color: Colors.grey.shade600),
              InkWell(
                onTap: () async {
                  await launch("mailto://tanaysingh0123@gmail.com");
                },
                child: ListTile(
                  leading: Icon(Icons.mail, color: Colors.white),
                  title: Text(
                    "tanaysingh0123@gmail.com",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromRGBO(252, 208, 202, 1),
            Color.fromRGBO(255, 255, 255, 1)
          ])),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "More",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
              letterSpacing: -1,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 10,
                shrinkWrap: true,
                childAspectRatio: 170 / 70,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ProfileScreen();
                        },
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      padding: EdgeInsets.only(left: 13, top: 10, bottom: 10),
                      width: 170,
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(191, 150, 86, 0.7),
                          width: 0.8,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Profile",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.symmetric(horizontal: 3),
                  //   padding: EdgeInsets.only(left: 13, top: 10, bottom: 10),
                  //   width: 170,
                  //   height: 80,
                  //   decoration: BoxDecoration(
                  //     border: Border.all(
                  //       color: Color.fromRGBO(191, 150, 86, 0.7),
                  //       width: 0.8,
                  //     ),
                  //     borderRadius: BorderRadius.circular(8),
                  //   ),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Icon(
                  //         Icons.settings,
                  //         color: Colors.black,
                  //       ),
                  //       SizedBox(height: 6),
                  //       Text(
                  //         "Settings",
                  //         style: TextStyle(
                  //           color: Colors.black,
                  //           fontSize: 16,
                  //           fontWeight: FontWeight.w400,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return AboutScreen();
                        },
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      padding: EdgeInsets.only(left: 13, top: 10, bottom: 10),
                      width: 170,
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(191, 150, 86, 0.7),
                          width: 0.8,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.info,
                            color: Colors.black,
                          ),
                          SizedBox(height: 6),
                          Text(
                            "About",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await contactSupport(context);
                      // await launch("mailto://tanaysingh0123@gmail.com");
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      padding: EdgeInsets.only(left: 13, top: 10, bottom: 10),
                      width: 170,
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(191, 150, 86, 0.7),
                          width: 0.8,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.support_agent,
                            color: Colors.black,
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Support",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    padding: EdgeInsets.only(left: 13, top: 10, bottom: 10),
                    width: 170,
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(191, 150, 86, 0.7),
                        width: 0.8,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.build,
                          color: Colors.black,
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Signup as provider",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    padding: EdgeInsets.only(left: 13, top: 10, bottom: 10),
                    width: 170,
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(191, 150, 86, 0.7),
                        width: 0.8,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.black,
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Logout",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
