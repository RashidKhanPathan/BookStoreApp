import 'package:ebook/New%20UI/booksapi.dart';
import 'package:ebook/New%20UI/fictionbooks.dart';
import 'package:ebook/New%20UI/comedybooks.dart';
import 'package:ebook/New%20UI/medicalbooks.dart';
import 'package:ebook/New%20UI/testingbooks.dart';
import 'package:ebook/screens/codingbooks.dart';
import 'package:flutter/material.dart';

class SliderWidget {
  static Widget popularbooksSlider() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Color.fromARGB(255, 255, 251, 251),
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }

  static Widget weekbookSlider() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Card(
                    child: Image(image: AssetImage("images/coding.jpg")),
                  ),
                  Text("Test")
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }

  static Widget wishbookSlider() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
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
                    MaterialPageRoute(builder: (context) => BookFinderPage()),
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
          ],
        ),
      ),
    );
  }

  static Widget newReleases() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Container(
              height: 180,
              width: 120,
              color: Colors.black,
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
