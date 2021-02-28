import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/main.dart';
import 'package:flutter_auth/screens/favourite/payment.dart';



class Chargers extends StatefulWidget {
  @override
  _ChargersState createState() => _ChargersState();
}

class _ChargersState extends State<Chargers> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(children: <Widget>[
          Row(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 5, top: 50),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      LayoutBuilder(builder: (context, constraints) {
                        return Icon(Icons.charging_station_outlined, size: 150);
                      }),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(left: 50, top: 50),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      LayoutBuilder(builder: (context, constraints) {
                        return GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                            child: Icon(
                              _showPassword
                                  ? Icons.star_border_outlined
                                  : Icons.star,
                              color: Colors.black,
                              size: 60,
                            ));
                      }),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 50),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      LayoutBuilder(builder: (context, constraints) {
                        return Icon(
                          Icons.directions,
                          color: Colors.black,
                          size: 60,
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            margin: EdgeInsets.only(top: 25, left: 20),
            child: Text(
              'Delta2',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            margin: EdgeInsets.only(top: 25, left: 20),
            child: Column(
              children: [
                Text(
                  'Select Connector',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Connector ID : 1',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'ACType1',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                Icon(
                  Icons.donut_small_outlined,
                  size: 70,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Preparing',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '\$50/hour + 15% Tax (Max 25)',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                RaisedButton(
                    color: Colors.black,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Payment()));
                    },
                    child: Text(
                      'SELECT',
                    )
                    //color: Colors.black,
                    ),
              ],
            ),
          ),
          Spacer(),
          Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                height: 60,
                width: double.infinity,
                child: RaisedButton(
                    color: Colors.black,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Bottom_Nav()));
                    },
                    child: Text(
                      'BACK',
                      style: TextStyle(fontSize: 20),
                    )),
              )),
        ]),
      ),
    );
  }
}
