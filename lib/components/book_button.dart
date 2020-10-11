import 'dart:ui';
import 'package:flutter/material.dart';
import '../screens/booking.dart';
import 'package:hexcolor/hexcolor.dart';

class BookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BookingScreen()));
      },
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      padding: const EdgeInsets.all(0.0),
      child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [HexColor("#314755"), HexColor("#26a0da")]),
              borderRadius: BorderRadius.all(Radius.circular(32))),
          child: Container(
            padding: EdgeInsets.only(left: 32, right: 32, top: 12, bottom: 12),
            child: Text("Book Now"),
          )),
    );
  }
}
