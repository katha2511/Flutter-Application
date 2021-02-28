import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/screens/login/login_screen.dart';
import 'package:flutter_auth/screens/profile/about_us.dart';
import 'package:flutter_auth/screens/profile/account.dart';
import 'package:flutter_auth/screens/profile/contact_us.dart';
import 'package:flutter_auth/screens/profile/invoice.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(3.0),
          child: AppBar(
            automaticallyImplyLeading: false, // hides leading widget
            // flexibleSpace: SomeWidget(),
          )),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 60,
            width: double.infinity,
            padding: EdgeInsets.only(left: 20.0, top: 20.0),
            child: Text(
              'Profile',
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.white,
            height: 60,
            width: double.infinity,
            padding: EdgeInsets.only(left: 20.0, top: 25.0),
            child: Text(
              'Account',
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
          ),
          Container(
            color: Colors.white,
            child: Divider(
              color: Colors.yellow,
              thickness: 2.0,
              indent: 6.0,
              endIndent: 6.0,
            ),
          ),
          FlatButton(
            color: Colors.white,
            height: 60,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccountPage()));
            },
            //width: double.infinity,
            padding: EdgeInsets.only(left: 20.0, top: 15.0),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.edit,
                    size: 30.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 6.0),
                  child: Text(
                    'EDIT PROFILE',
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18.0),
                  ),
                )
              ],
            ),
          ),
          FlatButton(
            color: Colors.white,
            height: 60,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InvoicePage()));
            },
            //width: double.infinity,
            padding: EdgeInsets.only(left: 20.0, top: 15.0),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.contact_page_outlined,
                    size: 30.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 6.0),
                  child: Text(
                    'INVOICE',
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 45.0),
            height: 40,
            width: double.infinity,
            padding: EdgeInsets.only(left: 20.0, top: 5.0),
            child: Text(
              'Info',
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
          ),
          Container(
            color: Colors.white,
            child: Divider(
              color: Colors.yellow,
              thickness: 2.0,
              indent: 6.0,
              endIndent: 6.0,
            ),
          ),
          FlatButton(
            color: Colors.white,
            height: 60,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutUs()));
            },
            //width: double.infinity,
            padding: EdgeInsets.only(left: 20.0, top: 15.0),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.info_outline_rounded,
                    size: 30.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 6.0),
                  child: Text(
                    'ABOUT US',
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18.0),
                  ),
                )
              ],
            ),
          ),
          FlatButton(
            color: Colors.white,
            height: 60,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactUs()));
            },
            //width: double.infinity,
            padding: EdgeInsets.only(left: 20.0, top: 15.0),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.phone,
                    size: 30.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 6.0),
                  child: Text(
                    'CONTACT US',
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18.0),
                  ),
                )
              ],
            ),
          ),
          FlatButton(
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            height: 60,
            //width: double.infinity,
            padding: EdgeInsets.only(left: 20.0, top: 15.0),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.logout,
                    size: 30.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 6.0),
                  child: Text(
                    'LOGOUT',
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
