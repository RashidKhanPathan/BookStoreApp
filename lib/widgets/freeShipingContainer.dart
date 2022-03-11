import 'package:flutter/material.dart';

class FreeShippingContainerWidget {
  static Widget freeShippingContainer() {
    return Container(
      color: Color.fromARGB(255, 28, 60, 87),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text("FAQ",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 75,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.book,
                          color: Colors.blue,
                        ),
                        Text("Book Depository",
                            style: TextStyle(fontSize: 15, color: Colors.blue))
                      ],
                    ),
                    Text("FAQ",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue)),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Container(
                height: 75,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.book,
                          color: Colors.blue,
                        ),
                        Text("BLACKWELLS",
                            style: TextStyle(fontSize: 15, color: Colors.blue))
                      ],
                    ),
                    Text("FAQ",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
