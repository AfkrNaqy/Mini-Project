import 'package:flutter/material.dart';
import 'package:app_book_store/screen/page_menu.dart';
import 'package:app_book_store/screen/page_home.dart';

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

  var _userName = "username";
  var _password = "username123";
  var _controllerUsername = TextEditingController();
  var _controllerPassword = TextEditingController();
  bool _hideText = true;
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          // TAMBAH 2 ROW BUAT GAMBAR SAMA TEXT FIELD
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/Image_1.png',
              scale: 100.0,
            ),
            SizedBox(
              height: 28,
            ),
            Text('MyApp'),
            SizedBox(
              height: 24,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TextFormField(
              obscureText: _hideText,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                hintText: 'Password',
                prefixIcon: IconButton(
                  onPressed: () => _hideText = false,
                  icon: Icon(Icons.remove_red_eye_rounded),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print(_controllerUsername.text);
                  print(_controllerPassword.text);
                  if (_controllerUsername.text == _userName) {
                    HomePage();
                  } else {}
                  //.......
                }
              },
              child: Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
