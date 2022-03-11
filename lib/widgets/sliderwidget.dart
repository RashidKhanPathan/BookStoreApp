import 'package:ebook/screens/artbooks.dart';
import 'package:ebook/screens/fictionbooks.dart';
import 'package:ebook/screens/comedybooks.dart';
import 'package:ebook/screens/foodbooks.dart';
import 'package:ebook/screens/hackingbooks.dart';
import 'package:ebook/screens/medicalbooks.dart';
import 'package:ebook/screens/thrillerbooks.dart';
import 'package:ebook/screens/codingbooks.dart';
import 'package:flutter/material.dart';

class SliderWidget {
  static Widget popularbooksSlider(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => CodingBooks()),
                    (route) => false);
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/popular/popular.jpg"),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => FictionBooks()),
                    (route) => false);
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/popular/popular (1).png"),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ComedyBooks()),
                    (route) => false);
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/popular/popular (2).jpg"),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MedicalBooks()),
                    (route) => false);
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/popular/popular (4).jpg"),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ThrillerBooks()),
                    (route) => false);
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/popular/popular (5).jpg"),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/popular/popular (1).png"),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(10),
                ),
              ),
              height: 180,
              width: 120,
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => FoodBooks()),
                    (route) => false);
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/popular/popular (2).jpg"),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/popular/popular.jpg"),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(10),
                ),
              ),
              height: 180,
              width: 120,
            ),
          ],
        ),
      ),
    );
  }

  static Widget weekbookSlider(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => CodingBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Coding Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/coding.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => FictionBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Fiction Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/fiction.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ComedyBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Comedy Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/comedy.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MedicalBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Medical Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/medical.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ThrillerBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Thriller",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/thriller.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Hacking()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Hacking Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/hacking.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => FoodBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Food Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/food.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ArtBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Art Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/art.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget wishbookSlider(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => CodingBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Coding Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/coding.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => FictionBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Fiction Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/fiction.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ComedyBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Comedy Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/comedy.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MedicalBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Medical Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/medical.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ThrillerBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Thriller",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/thriller.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Hacking()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Hacking Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/hacking.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => FoodBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Food Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/food.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ArtBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Art Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/art.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget booksSlider(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => CodingBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Coding Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/coding.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => FictionBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Fiction Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/fiction.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ComedyBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Comedy Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/comedy.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MedicalBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Medical Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/medical.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ThrillerBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Thriller",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/thriller.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Hacking()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Hacking Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/hacking.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => FoodBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Food Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/food.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ArtBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Art Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/art.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget newReleases(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => CodingBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Coding Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/coding.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => FictionBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Fiction Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/fiction.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ComedyBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Comedy Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/comedy.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MedicalBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Medical Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/medical.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ThrillerBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Thriller",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/thriller.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Hacking()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Hacking Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/hacking.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => FoodBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Food Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/food.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ArtBooks()),
                    (route) => false);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Art Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 100,
                    fit: BoxFit.fill,
                    image: AssetImage("images/art.jpg"),
                  ),
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 180,
                width: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
