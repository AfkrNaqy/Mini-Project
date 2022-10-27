import 'package:flutter/material.dart';

class BorrowField extends StatefulWidget {
  const BorrowField({Key? key}) : super(key: key);

  @override
  State<BorrowField> createState() => _BorrowFieldState();
}

class _BorrowFieldState extends State<BorrowField> {
  var _controllerUserName = TextEditingController();
  var _controllerPassword = TextEditingController();

  var _gender = "Laki-Laki";

  // DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Borrow"),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Name",
                    labelStyle: TextStyle(),
                    // hintText: "Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Email",
                    labelStyle: TextStyle(),
                    // hintText: "Name",
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Phone",
                    labelStyle: TextStyle(),
                    // hintText: "Name",
                    prefixIcon: Icon(Icons.phone_android),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Gender"),
                    ListTile(
                      onTap: () => setState(() => _gender = 'Laki - Laki'),
                      leading: Radio(
                        value: "Laki - Laki",
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() => _gender = value.toString());
                        },
                      ),
                      title: Text("Laki-laki"),
                    ),
                    ListTile(
                      onTap: () => setState(() => _gender = 'Perempuan'),
                      leading: Radio(
                        value: "Perempuan",
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() => _gender = value.toString());
                        },
                      ),
                      title: Text("Perempuan"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: "humm",
                    prefixIcon: Icon(Icons.calendar_month_outlined),
                    suffixIcon: RaisedButton(
                      child: Text("Get Date"),
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2001),
                          lastDate: DateTime(2045),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 2),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.calendar_month_outlined),
                    Text("data"),
                    RaisedButton(
                      child: Text("Get Date"),
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2001),
                          lastDate: DateTime(2045),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
