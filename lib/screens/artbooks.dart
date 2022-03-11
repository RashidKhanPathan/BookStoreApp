import 'package:ebook/apis/apis.dart';
import 'package:flutter/material.dart';

import 'dart:convert';

import 'package:http/http.dart' as http;

class ArtBooks extends StatefulWidget {
  const ArtBooks({Key key}) : super(key: key);

  @override
  State<ArtBooks> createState() => _ArtBooksState();
}

class _ArtBooksState extends State<ArtBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 42, 59),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "homescreen");
            },
            icon: Icon(Icons.home),
          ),
        ],
        backgroundColor: Colors.blue,
        title: Text('Art Books'),
        leading: Icon(Icons.book),
      ),
      body: FutureBuilder(
          future: _fetchPotterBooks(),
          builder: (context, AsyncSnapshot<List<Book>> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                return ListView(
                    children: snapshot.data.map((b) => BookTile2(b)).toList());
              }
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}

class BooksList extends StatelessWidget {
  const BooksList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Row(
          children: [
            Container(
              height: 200,
              width: 150,
              color: Colors.blue,
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}

class BookTile extends StatelessWidget {
  final Book book;
  BookTile(this.book);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        ListTile(
          title: Text(book.title),
          subtitle: Text(book.author),
          onTap: () => _navigateToDetailsPage(book, context),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              book.thumbnailUrl,
            ),
          ),
        ),
      ],
    ));
  }
}

class BookTile2 extends StatelessWidget {
  final Book book;
  BookTile2(this.book);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 0.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 5.0,
            ),
            Container(
              height: 200,
              width: 130,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(4.0)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Image.network(
                  book.thumbnailUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200.0,
                width: 200.0,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        book.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.fade,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        book.author,
                        style: TextStyle(color: Colors.grey, fontSize: 10.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "8.5/10",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      FlatButton(
                        onPressed: () => _navigateToDetailsPage(book, context),
                        color: Colors.deepOrange,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Details",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ],
    ));
  }
}

List<Book> _fetchBooks() {
  return List.generate(
      100, (i) => Book(title: 'Book $i', author: 'Author $i', desc: 'Desc $i'));
}

Future<List<Book>> _fetchPotterBooks() async {
  const url = BooksApi.artBooksApiUrl;
  final res = await http.get(Uri.parse(url));
  if (res.statusCode == 200) {
    return _parseBookJson(res.body);
  } else {
    throw Exception('Error: ${res.statusCode}');
  }
}

List<Book> _parseBookJson(String jsonStr) {
  final jsonMap = json.decode(jsonStr);
  final jsonList = (jsonMap['items'] as List);
  return jsonList
      .map((jsonBook) => Book(
            title: jsonBook['volumeInfo']['title'],
            desc: jsonBook['volumeInfo']['description'],
            author: (jsonBook['volumeInfo']['authors'] as List).join(', '),
            thumbnailUrl: jsonBook['volumeInfo']['imageLinks']
                ['smallThumbnail'],
          ))
      .toList();
}

class Book {
  final String title;
  final String author;
  final String thumbnailUrl;
  final String desc;

  Book({
    @required this.title,
    @required this.author,
    this.thumbnailUrl,
    @required this.desc,
  })  : assert(title != null),
        assert(author != null);
}

void _navigateToDetailsPage(Book book, BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => BookDetailsPage(book),
  ));
}

class BookDetailsPage extends StatelessWidget {
  final Book book;
  BookDetailsPage(this.book);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: BookDetails(book),
        ),
      ),
    );
  }
}

class BookDetails extends StatelessWidget {
  final Book book;
  BookDetails(this.book);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(book.thumbnailUrl),
          SizedBox(height: 10.0),
          Text(book.title),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(book.author,
                style: TextStyle(fontWeight: FontWeight.w700)),
          ),
          Text(book.desc.toString())
        ],
      ),
    );
  }
}
