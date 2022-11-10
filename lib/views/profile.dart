import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profil/widget/border_icon.dart';

import '../counst.dart';
import '../widget/card_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BorderIcon(
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.grey,
                    ),
                  ),
                  BorderIcon(
                    icon: Icon(
                      Icons.border_color,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children:[

                Container(height: 130,width: 200,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF141321),
                    radius: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/ammar.jpg"),
                      radius: 55,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFF141321),
                        width: 2,
                      ),
                      color: Colors.green.shade900,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 3,
                    ),
                    child: Text(
                      "Online",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 9,
                      ),
                    ),
                  ),
                )
              ],

            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                "Ammar Hosni",
                style: TextStyle(
                  color: Colors.white.withOpacity(.8),
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                "0123456789",
                style: TextStyle(
                  color: Colors.white.withOpacity(.7),
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "ammar2013@gmail.com",
                style: TextStyle(
                  color: Colors.grey.withOpacity(.4),
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BorderIcon(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.grey,
                      size: 30,
                    ),
                    color: Color(0xFF414AE8),
                  ),
                  BorderIcon(
                    icon: Icon(
                      Icons.videocam,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                  BorderIcon(
                    icon: Icon(
                      Icons.message_rounded,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                  BorderIcon(
                    icon: Icon(
                      Icons.mail_outline,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Today",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CardView(
                    icon: Icon(
                      Icons.phone_missed,
                      color: Colors.red,
                    ),
                    text: "Missed Call",
                    textcolor: Colors.red,
                    number: 4,
                    mint: "",
                  ),
                  CardView(
                      icon: Icon(
                        Icons.phone,
                        color: Colors.grey,
                      ),
                      text: "Incoming Call",
                      textcolor: Colors.white,
                      number: 1,
                      mint: "2 mint"),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Bio",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 130,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text(
                      "Arman Rokni is a Product designer at Piqo design agency ",
                      style: TextStyle(
                          color: Colors.grey.withOpacity(.5), fontSize: 18),
                    ),
                    Row(
                      children: [
                        Text(
                          "Email:",
                          style: TextStyle(
                            color: Colors.grey.withOpacity(.5),
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Piqo@info.com",
                          style: TextStyle(
                              color: Colors.white.withOpacity(.5),
                              fontSize: 18),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
