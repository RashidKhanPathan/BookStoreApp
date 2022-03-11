import 'package:flutter/material.dart';

import 'dart:convert';

import 'package:http/http.dart' as http;

class FictionBooks extends StatefulWidget {
  const FictionBooks({Key key}) : super(key: key);

  @override
  State<FictionBooks> createState() => _FictionBooksState();
}

class _FictionBooksState extends State<FictionBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text('Fiction Books'),
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
                    children: snapshot.data.map((b) => BookTile(b)).toList());
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

List<Book> _fetchBooks() {
  return List.generate(
      200, (i) => Book(title: 'Book $i', author: 'Author $i', desc: 'Desc $i'));
}

Future<List<Book>> _fetchPotterBooks() async {
  const url =
      // https://www.googleapis.com/books/v1/volumes?q={dartlang}
      // http://openlibrary.org/search.json?q=Coding
      // https://www.googleapis.com/books/v1/volumes?q={horror}
      // https://www.googleapis.com/books/v1/volumes?q={religion}

      // This is not in use
      'https://www.googleapis.com/books/v1/volumes?q={fiction}';
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
        assert(author != null),
        assert(desc != null);
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: BookDetails(book),
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
