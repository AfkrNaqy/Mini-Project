import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:app_book_store/screen/page_borrow.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookDesc(),
    );
  }
}

class BookDesc extends StatefulWidget {
  const BookDesc({Key? key}) : super(key: key);

  @override
  State<BookDesc> createState() => BookDescState();
}

class BookDescState extends State<BookDesc> {
  @override
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(25)),
    ),
  );

  bool _isFavorite = false;

  String _textLorem = lorem(paragraphs: 3, words: 200);

  void _toogleFavorite() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
      } else {
        _isFavorite = true;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Image_3.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.0),
                  ),
                  child: Image.asset(
                    "assets/images/Image_3.jpg",
                    height: 180,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 70,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.symmetric(
                  horizontal: BorderSide(width: 2),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Judul Buku"),
                    Row(
                      children: [
                        Container(
                          child: IconButton(
                            icon: (_isFavorite
                                ? Icon(Icons.favorite)
                                : Icon(Icons.favorite_border)),
                            color: Colors.red,
                            onPressed: _toogleFavorite,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            BorrowField();
                          },
                          child: Text("Pinjam"),
                          style: raisedButtonStyle,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                Text(
                  "DESKRIPSI",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(_textLorem),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
