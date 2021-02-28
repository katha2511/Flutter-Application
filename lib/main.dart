import 'package:flutter/material.dart';
import 'package:flutter_auth/screens/favourite/Favourite.dart';
import 'package:flutter_auth/screens/home/HomePage.dart';
import 'package:flutter_auth/screens/login/login_screen.dart';

import 'package:flutter_auth/screens/profile/profile.dart';
import 'package:flutter_auth/screens/transaction/Transaction.dart';
import 'package:splashscreen/splashscreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: LoginScreen(),
      title: Text(
        'Veyond',
        textScaleFactor: 2,
      ),
      image: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0aO0C1mxZbqp1QAnwdOxE1ihdeotflZ_s3w&usqp=CAU'),
      loadingText: Text('Loading'),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}

// ignore: camel_case_types
class Bottom_Nav extends StatefulWidget {
  Bottom_Nav({Key key}) : super(key: key);
  @override
  _Bottom_NavState createState() => _Bottom_NavState();
}

// ignore: camel_case_types
class _Bottom_NavState extends State<Bottom_Nav> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    FavouritePage(),
    TransactionPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_border_outlined,
              size: 30,
            ),
            label: 'Favourite',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.money,
              size: 30,
            ),
            label: 'Transaction',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.face,
              size: 30,
            ),
            label: 'Profile',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        //unselectedItemColor: Colors.amberAccent,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}
