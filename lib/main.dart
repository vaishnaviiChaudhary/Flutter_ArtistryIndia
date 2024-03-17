// import 'dart:js';

import 'package:artapp/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:artapp/login.dart';
import 'package:artapp/register.dart';
import 'package:artapp/homepage.dart';
import 'package:artapp/event_calendar.dart';
// import 'package:artapp/details_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Wrapper(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'home': (context) => HomePage(),
      'event_calendar': (context) => EventCalendarScreen(),
      // 'details': (context) => DetailsPage(plant: ,),
    },
  ));
}
