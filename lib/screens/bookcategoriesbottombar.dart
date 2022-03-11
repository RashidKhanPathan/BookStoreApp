import 'package:ebook/widgets/buttons.dart';
import 'package:ebook/widgets/feedbackContainer.dart';
import 'package:ebook/widgets/footerContainer.dart';
import 'package:ebook/widgets/freeShipingContainerfooter.dart';
import 'package:ebook/widgets/paymentRow.dart';
import 'package:flutter/material.dart';

import '../widgets/bookcategorylist.dart';

class BookCategories extends StatefulWidget {
  const BookCategories({Key key}) : super(key: key);

  @override
  State<BookCategories> createState() => _BookCategoriesState();
}

class _BookCategoriesState extends State<BookCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 37, 37, 37),
      body: ListView(
        children: [
          searchContainer(),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Bookstores: Free Shiping",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 25),
          BookCategoryListWidget.bookcategoriesList(),
          SizedBox(height: 25),
          BookCategoryListWidget.bookcategories(),
          SizedBox(height: 20),
          FreeShippingContainerWidget.freeShippingContainer(),
          SizedBox(width: 20),
          SizedBox(height: 20),
          PaymentWidget.paymentRow(context),
          SizedBox(width: 20),
          SizedBox(height: 20),
          FeedbackWidget.feedbackContainer(context),
          SizedBox(height: 20),
          FooterWidget.footerWidget()
        ],
      ),
    );
  }
}

Widget searchContainer() {
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
