import 'package:covid_tracker_1/HomePage.dart';
import 'package:covid_tracker_1/search.dart';
import 'package:covid_tracker_1/vaccine.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(),
    home: homepage(),
  ));
}
