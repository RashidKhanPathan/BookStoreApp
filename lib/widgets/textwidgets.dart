import 'package:flutter/material.dart';

class TextWidgets {
  static Widget textCompareBookPrices() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Compare book prices",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.blue),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.flag),
            Text("Free Shipping",
                style: TextStyle(fontSize: 15, color: Colors.blue))
          ],
        )
      ],
    );
  }

  static Widget booklistCategoriesText() {
    return Center(
      child: Text(
        "Book Categories",
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
      ),
    );
  }

  static Widget comingsoonText() {
    return Center(
      child: Text(
        "Coming Soon",
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
      ),
    );
  }

  static Widget wishbookText() {
    return Center(
      child: Text(
        "Wishlists",
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
      ),
    );
  }

  static Widget pupularbooksText() {
    return Center(
      child: Text(
        "Popular Books in your country",
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
      ),
    );
  }

  static Widget weekbookText() {
    return Center(
      child: Text(
        "Best book to read this week",
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
      ),
    );
  }
}
