import 'package:flutter/material.dart';

class SearchContainerWidget {
  static Widget searchContainer() {
    return Container(
      height: 150,
      width: 100,
      color: Color.fromARGB(255, 26, 41, 53),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                        ),
                        contentPadding: EdgeInsets.all(10),
                        filled: true,
                        hintText: "Enter Keywords, title, author, or ISBN",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 136, 136, 136),
                        ),
                        fillColor: Colors.black,
                        suffixIcon: IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 235, 215, 35),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                  )
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black,
              ),
              child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.book,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Book Depository",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  )),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black,
              ),
              child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.abc,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Blackwells",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ]),
    );
  }
}
