import 'package:flutter/material.dart';

class FooterWidget {
  static Widget footerWidget() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text("Book and Price Corporation",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal)),
          Text("Bookstores.com",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          Text("35 000 + active app users",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal)),
          Text("Email: boostore@gmail.com",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal))
        ],
      ),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 20, 103, 212),
            Color.fromARGB(255, 14, 135, 165)
          ],
        ),
      ),
    );
  }
}
