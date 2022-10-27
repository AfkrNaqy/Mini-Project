import 'package:flutter/material.dart';
import 'package:app_book_store/screen/page_menu.dart';
import 'package:app_book_store/screen/page_login.dart';
import 'package:app_book_store/screen/page_home.dart';
import 'package:app_book_store/screen/page_book.dart';
import 'package:app_book_store/screen/page_borrow.dart';
import 'dart:html';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
