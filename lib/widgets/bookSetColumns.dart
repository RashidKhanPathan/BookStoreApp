import 'package:flutter/material.dart';

class BookSetColumnsWidget {
  static Widget booksetColumns(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: Container(
              height: 85,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 254, 254),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Card(
                color: Colors.transparent,
                elevation: 0,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Ink.image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://i.pinimg.com/originals/fb/c2/a9/fbc2a961bfd0e7b5673a7922cb848cdb.jpg"),
                    ),
                    MaterialButton(
                      color: Colors.transparent,
                      onPressed: () {},
                      child: Text(
                        "manga Book Sets",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: Container(
              height: 85,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Card(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Ink.image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.kindpng.com/picc/m/762-7620681_banner-flower-wedding-card-design-png-transparent-png.png"),
                    ),
                    MaterialButton(
                      color: Colors.transparent,
                      onPressed: () {},
                      child: Text(
                        "Beautiful Books",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: Container(
              height: 85,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Card(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Ink.image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://timelinecovers.pro/facebook-cover/download/ultra-hd-space-facebook-cover.jpg"),
                    ),
                    MaterialButton(
                      color: Colors.transparent,
                      onPressed: () {},
                      child: Text(
                        "Harry Potter (Most Popular)",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              // other irrelevent children here
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  static Widget booksetColumns2(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: Container(
              height: 85,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 254, 254),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Card(
                color: Colors.transparent,
                elevation: 0,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Ink.image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://i.pinimg.com/originals/fb/c2/a9/fbc2a961bfd0e7b5673a7922cb848cdb.jpg"),
                    ),
                    MaterialButton(
                      color: Colors.transparent,
                      onPressed: () {},
                      child: Text(
                        "Blog( For Book Lovers)",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: Container(
              height: 85,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Card(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Ink.image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.kindpng.com/picc/m/762-7620681_banner-flower-wedding-card-design-png-transparent-png.png"),
                    ),
                    MaterialButton(
                      color: Colors.transparent,
                      onPressed: () {},
                      child: Text(
                        "Special offers (Discounts)",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: Container(
              height: 85,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Card(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Ink.image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://timelinecovers.pro/facebook-cover/download/ultra-hd-space-facebook-cover.jpg"),
                    ),
                    MaterialButton(
                      color: Colors.transparent,
                      onPressed: () {},
                      child: Text(
                        "Book Recommendations (Reading Lists)",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              // other irrelevent children here
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
