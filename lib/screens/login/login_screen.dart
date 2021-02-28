import 'package:flutter/material.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/screens/signup/signup_screen.dart';

import '../../main.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }
}

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  // bool checkBoxValue = false;
  //bool checkBoxValue1 = false;
  bool rememberMeFlag = false;
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
        padding: const EdgeInsets.only(
            top: 200.0, left: 20.0, right: 20.0, bottom: 50.0),
        width: double.infinity,
        height: size.height,
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 30),
                Text(
                  'LOGIN',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.white),
                ),
                SizedBox(height: size.height * 0.05),
                TextFieldContainer(
                  child: TextFormField(
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Email',
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                    ),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please Enter Email';
                      }
                      if (!RegExp('^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]')
                          .hasMatch(value)) {
                        return 'Please enter a valid Email';
                      }
                      return null;
                    },
                    onSaved: (String value) {},
                    onChanged: (value) {},
                  ),
                ),
                TextFieldContainer(
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      icon: Icon(
                        Icons.lock,
                        color: Colors.black87,
                      ),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                          child: Icon(_showPassword
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      /* Icon(
                        Icons.visibility,
                        color: Colors.black87,
                      ),*/
                      border: InputBorder.none,
                    ),
                    obscureText: !_showPassword,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please Enter Password';
                      }

                      return null;
                    },
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Row(children: <Widget>[
                      Row(
                        children: <Widget>[
                          GestureDetector(
                            child: Row(
                              children: <Widget>[
                                Checkbox(
                                  value: rememberMeFlag,
                                  onChanged: (bool value) => setState(() {
                                    rememberMeFlag = value;
                                  }),
                                ),
                                Text(
                                  'Remember me',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            onTap: () => setState(() {
                              rememberMeFlag = !rememberMeFlag;
                            }),
                          ),
                        ],
                      ),
                    ])),
                RoundedButton(
                  text: 'LOGIN',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Bottom_Nav()));
                  },
                ),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
