import 'package:bakingo/profile.dart';
import 'package:bakingo/reviews.dart';
import 'package:bakingo/selectcity.dart';
import 'package:bakingo/toggle.dart';
import 'package:bakingo/viewall.dart';
import 'package:bakingo/viewmorecakepage.dart';
import 'package:bakingo/wishlist.dart';
import 'package:flutter/material.dart';
import '1st.dart';
import '2nd.dart';
import '3rd.dart';
import '4th.dart';
import 'addedtocart.dart';
import 'basket.dart';
import 'botmnavig.dart';

import 'catogories.dart';
import 'home2nd.dart';
import 'navigationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Navig(),
    );
  }
}



