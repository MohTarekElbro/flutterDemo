// main.dart
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'LocalNotificationScreen.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

getTokenz() async {
  String token = await _firebaseMessaging.getToken();
  print(token);
}

class _HomeAppState extends State<HomeApp> {
  @override
  void initState() {
    super.initState();
    getTokenz();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocalNotificationScreen(),
    );
  }
}

// class HomeApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LocalNotificationScreen(),
//     );
//   }
// }
