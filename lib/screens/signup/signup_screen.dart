import 'package:flutter/material.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/screens/login/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Signup(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  var isLoading = false;
  int selectedRadio;
  bool viewVisible = false;
  void showWidget() {
    setState(() {
      viewVisible = true;
    });
  }

  void hideWidget() {
    setState(() {
      viewVisible = false;
    });
  }

  bool _showPassword = false;

  String name, email, phone, dni, add1, add2;

  //TextController to read text entered in text field
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextStyle style = TextStyle(fontFamily: 'calibri', fontSize: 15.0);

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  // ignore: always_declare_return_types
  setSelectedRadio(int val) async {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
          child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: SizedBox(
                  height: 60.0,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0aO0C1mxZbqp1QAnwdOxE1ihdeotflZ_s3w&usqp=CAU',
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: style,
                  decoration: InputDecoration(labelText: 'First Name*'),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please Enter Name';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    name = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: style,
                  decoration: InputDecoration(labelText: 'Last Name*'),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please Enter Last Name';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    name = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: 'Email*'),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please Enter Email';
                    }
                    if (!RegExp('^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]')
                        .hasMatch(value)) {
                      return 'Please a valid Email';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    email = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: TextFormField(
                  controller: password,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Password*',
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                        child: Icon(_showPassword
                            ? Icons.visibility
                            : Icons.visibility_off)),
                  ),
                  obscureText: !_showPassword,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please a Enter Password';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    // _setPassword(value);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: TextFormField(
                  controller: confirmpassword,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password*',
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                        child: Icon(_showPassword
                            ? Icons.visibility
                            : Icons.visibility_off)),
                  ),
                  obscureText: !_showPassword,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please re-enter password';
                    }
                    print(password.text);

                    print(confirmpassword.text);

                    if (password.text != confirmpassword.text) {
                      return 'Password does not match';
                    }

                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'DNI*'),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please enter DNI ';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    dni = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: style,
                  decoration: InputDecoration(
                      labelText: 'Country*', hintText: 'Country'),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please Enter Country';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    name = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Phone No*'),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please enter phone no ';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    phone = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: ButtonBar(
                  alignment: MainAxisAlignment.start,
                  buttonHeight: 5,
                  children: <Widget>[
                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: selectedRadio,
                            activeColor: Colors.blue,
                            onChanged: (val) {
                              print('Radio $val');
                              setSelectedRadio(val);
                              showWidget();
                            }),
                        Text('With Tag'),
                        SizedBox(
                          width: 60,
                          height: 0,
                        ),
                        Radio(
                            value: 2,
                            groupValue: selectedRadio,
                            activeColor: Colors.blue,
                            onChanged: (val) {
                              print('Radio $val');
                              setSelectedRadio(val);
                              hideWidget();
                            }),
                        Text('Without Tag'),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 0),
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Visibility(
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    visible: viewVisible,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Tag Id*'),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter Tag Id ';
                        }
                        return null;
                      },
                      onSaved: (String value) {},
                    )),
              ),

              /*Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "street address 1"),
                  onSaved: (String value) {
                    add1 = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "street address 2"),
                  onSaved: (String value) {
                    add2 = value;
                  },
                ),
              ),*/
              SizedBox(
                width: 350,
                height: 50,
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    if (_formkey.currentState.validate()) {
                      print('successful');

                      return;
                    } else {
                      print('UnSuccessfull');
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: Colors.blue[600], width: 2)),
                  textColor: Colors.white,
                  child: Text('Submit'),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 30)
            ],
          ),
        ),
      )),
    );
  }
}
