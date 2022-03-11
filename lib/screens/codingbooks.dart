import 'package:ebook/ChoiceCard.dart';
import 'package:ebook/UI/BookListScreen.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class CodingBooks extends StatefulWidget {
  const CodingBooks({Key key}) : super(key: key);

  @override
  State<CodingBooks> createState() => _CodingBooksState();
}

class _CodingBooksState extends State<CodingBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Coding Books"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.popAndPushNamed(context, "homescreen"),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height - 142,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                shrinkWrap: true,
                padding: EdgeInsets.all(3.0),
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                children: List.generate(
                  choices.length,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        print("onTap called.$index, value---->" +
                            choices[index].title);
                        _navigateBook(choices[index]);
                      },
                      child: ChoiceCard(
                        choice: choices[index],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateBook(Choice choice) {
    Toast.show(choice.title, context,
        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BookListScreen(choice: choice)),
    );
  }
}
