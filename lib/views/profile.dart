import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profil/widget/border_icon.dart';

import '../counst.dart';
import '../widget/card_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                //children: [Text("knkljfnkjbfkhbk")],
                ),
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.asset(
                "assets/images/ammar.jpg",
                fit: BoxFit.cover,
                height: 120,
                width: 120,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                "Ammar Hosni",
                style: TextStyle(
                    color: Colors.white.withOpacity(.8), fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                "0123456789",
                style: TextStyle(
                    color: Colors.white.withOpacity(.7), fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "ammar2013@gmail.com",
                style:
                    TextStyle(color: Colors.grey.withOpacity(.4), fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BorderIcon(
                    faIcon: const FaIcon(
                      FontAwesomeIcons.phone,
                      color: Colors.grey,
                    ),
                    color: primaryColor,
                  ),
                  const BorderIcon(
                    faIcon: FaIcon(
                      FontAwesomeIcons.video,
                      color: Colors.grey,
                    ),
                  ),
                  const BorderIcon(
                    faIcon: FaIcon(
                      FontAwesomeIcons.message,
                      color: Colors.grey,
                    ),
                  ),
                  const BorderIcon(
                    faIcon: FaIcon(
                      FontAwesomeIcons.solidMessage,
                      color: Colors.grey,
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
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CardView(),
                  CardView(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all( 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Bio",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
Container(
  decoration: BoxDecoration(color: cardColor,borderRadius: BorderRadius.circular(25)),
),
          ],
        ),
      ),
    );
  }
}
