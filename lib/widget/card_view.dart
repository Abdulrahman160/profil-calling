import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../counst.dart';

class CardView extends StatelessWidget {
  const CardView({
    Key? key,
    this.icon,
    this.text,
    this.number,
    this.mint,
    required this.textcolor,
  }) : super(key: key);
  final Icon? icon;
  final Color textcolor;
  final String? text;
  final int? number;
  final String? mint;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 180,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: cardColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: icon,
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "$text",
              style: TextStyle(color: textcolor, fontSize: 18),
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
                    fontSize: 15,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
                Text(
                  "pm",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 78,
                ),
                Text(
                  "$number ",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  "$mint ",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
