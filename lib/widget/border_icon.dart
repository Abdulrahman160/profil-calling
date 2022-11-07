import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../counst.dart';

class BorderIcon extends StatelessWidget {
  const BorderIcon({
    Key? key,
    this.faIcon,
    this.color,
  }) : super(key: key);
  final FaIcon? faIcon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: cardColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(50)),
        child: faIcon);
  }
}
