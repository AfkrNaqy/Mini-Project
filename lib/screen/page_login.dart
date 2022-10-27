import 'package:flutter/material.dart';
import 'package:app_book_store/screen/page_menu.dart';
import 'package:app_book_store/screen/page_home.dart';
import 'package:app_book_store/screen/page_menu.dart';
// import 'package:flutter_login/flutter_login.dart';
// import 'package:flutter_login/src/models/login_data.dart';
import 'package:app_book_store/providers/auth.dart';
import 'package:provider/provider.dart';
import 'dart:html';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FieldLogin(),
    );
  }
}

class FieldLogin extends StatefulWidget {
  const FieldLogin({Key? key}) : super(key: key);

  @override
  State<FieldLogin> createState() => FieldLoginState();
}

class FieldLoginState extends State<FieldLogin> {
  // ==== VARIABLE ===
  // Duration get loginTime => Duration(milliseconds: 2250);
  var _userName = "username";
  var _password = "username123";
  TextEditingController _controllerUsername = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();
  bool _hideText = true;
  var _formKey = GlobalKey<FormState>();

  // Future<String> _authUserSignUp(LoginData data) {
  //   print('Name: ${data.name}, Password: ${data.password}');
  //   return Future.delayed(loginTime).then((_) async {
  //     try {
  //       await Provider.of<Auth1>(context, listen: false)
  //           .signup(data.name, data.password);
  //     } catch (err) {
  //       print(err);
  //       return err.toString();
  //     }

  //     return "null";
  //   });
  // }

  // Future<String> _authUserLogin(LoginData data) {
  //   print('Name: ${data.name}, Password: ${data.password}');
  //   return Future.delayed(loginTime).then((_) {
  //     Provider.of<Auth1>(context, listen: false)
  //         .login(data.name, data.password);
  //     return "null";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 184, 234, 255),
      body: Container(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            // TAMBAH 2 ROW BUAT GAMBAR SAMA TEXT FIELD
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/Image_1.png',
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Text('MyApp'),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 0, 102, 128),
                      border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2)),
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.white),
                      suffixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      )),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  obscureText: _hideText,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 0, 102, 128),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2)),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          if (_hideText) {
                            _hideText = false;
                          } else {
                            _hideText = true;
                          }
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CategoryPage(),
                    ),
                  );
                  // if (_formKey.cur
                  //nrentState!.validate()) {
                  //   print(_controllerUsername.text);
                  //   print(_controllerPassword.text);
                  //   if (_controllerUsername.text == _userName) {
                  //     HomePage();
                  //   } else {}
                  //   //.......
                  // }
                },
                child: Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
