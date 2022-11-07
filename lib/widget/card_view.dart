import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../counst.dart';

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 220,
          width: 200,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: cardColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.phoneFlip,
                color: Colors.white,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Missed Call",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "09:23 ",
                    style: TextStyle(
                        fontSize: 12, color: Colors.white.withOpacity(0.6)),
                  ),
                  Text(
                    "pm",
                    style: TextStyle(
                        fontSize: 10, color: Colors.white.withOpacity(0.6)),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  Text(
                    "4 ",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    "2 mint",
                    style: TextStyle(
                        fontSize: 10, color: Colors.white.withOpacity(0.6)),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ],

    ));
  }
}
