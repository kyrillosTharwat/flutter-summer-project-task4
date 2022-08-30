import 'package:flutter/material.dart';

class HotelHomePage extends StatefulWidget {
  const HotelHomePage({Key? key}) : super(key: key);

  @override
  _HotelHomePageState createState() => _HotelHomePageState();
}

class _HotelHomePageState extends State<HotelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                 "https://img.freepik.com/premium-vector/beach-house-logo-design-template-beach-resort-villa-beach-hotel-logo_98702-711.jpg?w=740"))),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 400,
              ),
              OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                ),

                child: Text("Explore our Rooms",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.pushNamed(context, "roomList");
                },

              ),
            ],
          ),
        ));
  }
}