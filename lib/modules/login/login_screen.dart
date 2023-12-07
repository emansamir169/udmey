import 'package:flutter/material.dart';
import 'package:udemy/sharerd/shared_component/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // const LoginScreen({Key? key}) : super(key: key);
  var email = TextEditingController();

  var password = TextEditingController();

  var fromKey = GlobalKey<FormState>();
  bool eye = true;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: fromKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 30,
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.black, fontSize: 30.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsetsDirectional.all(15.0),
                  child: TextFormField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ('email can not empty ');
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: "Email",
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsetsDirectional.all(15.0),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: eye,
                    controller: password,
                    onChanged: (value) {
                      print(value);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        print('pass can not empty');
                      }
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: eye
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              eye = !eye;
                            });
                          },
                        ),
                        labelText: "password",
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                defalutButton(
                    function: () {
                      if (fromKey.currentState!.validate()) {
                        print(email.text);
                        print(password.text);
                      }
                    },
                    text: "login"),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account?",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(
                      width: 1.0,
                    ),
                    TextButton(
                      onPressed: () {
                        print("Register");
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
