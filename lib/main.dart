import 'package:flutter/material.dart';
import 'package:first_task/room%20list.dart';

import 'hotel home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme:
          AppBarTheme(backgroundColor: Colors.blue)),
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HotelHomePage(),
        "roomList": (context) => RoomListStatefulWidget()
      },
    );
  }
}
