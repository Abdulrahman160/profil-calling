import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profil/views/profile.dart';

import 'counst.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(color: backgroundColor,
      home:ProfileView() ,
    );
  }
}
