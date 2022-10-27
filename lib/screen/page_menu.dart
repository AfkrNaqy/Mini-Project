import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => CategoryPageState();
}

class CategoryPageState extends State<CategoryPage> {
  List category = [
    "Story",
    "Technology",
    "Life",
    "Comic",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 184, 234, 255),
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color.fromARGB(255, 0, 102, 128),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Text(
              "CATEGORY",
              style: TextStyle(fontSize: 32),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 16,
            ),
            Column(
                children: List.generate(
              category.length,
              (index) {
                String ctg = category[index];

                return Column(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 255, 255, 255),
                          ),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.all(20),
                          )),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ctg,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 102, 128),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    )
                  ],
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
