import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/screens/favourite/charger.dart';

class FavouritePage extends StatelessWidget {
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
      body:
          //   Container(
          // color: Colors.white,
          // height: 60,
          // width: double.infinity,
          // padding: EdgeInsets.only(left: 20.0, top: 20.0),
          // child: Text(
          //   'Favorite Chargers',
          //   textAlign: TextAlign.start,
          //   overflow: TextOverflow.ellipsis,
          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
          // ),
          //   ),
          Container(
        padding: EdgeInsets.only(left: 10.0, top: 10.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  color: Colors.white,
                  height: 80,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Text(
                    'Favorite Chargers',
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                );
              } else {
                return InfoTable();
              }
            },
            itemCount: 4,
          ),
        ),
      ),
    );
  }
}

class InfoTable extends StatelessWidget {
  const InfoTable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Chargers()));
        },
        child: Card(
            color: Colors.white,
            child: Column(
              children: [
                Table(columnWidths: {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(4),
                }, children: [
                  TableRow(children: [
                    Text(
                      'Charger ID:',
                      textScaleFactor: 1.5,
                    ),
                    Text(
                      'Delta2',
                      textScaleFactor: 1.5,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'Site Name:',
                      textScaleFactor: 1.5,
                    ),
                    Text('FireIndia',
                        textScaleFactor: 1.5,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                  TableRow(children: [
                    Text(
                      'Address:',
                      textScaleFactor: 1.5,
                    ),
                    Text('30 Bhagat Colony Near Susen Circle',
                        textScaleFactor: 1.5,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                  TableRow(children: [
                    Text(
                      'Status:',
                      textScaleFactor: 1.5,
                    ),
                    Text('Available',
                        textScaleFactor: 1.5,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                  /* TableRow(children: [
            Container(
              color: Colors.white,
              child: Divider(
                color: Colors.yellow,
                thickness: 2.0,
                indent: 0.0,
                endIndent: 0.0,
              ),
            ),
            Container(
              color: Colors.white,
              child: Divider(
                color: Colors.yellow,
                thickness: 2.0,
                indent: 0.0,
                endIndent: 0.0,
              ),
            ),
          ]),*/
                ]),
              ],
            )),

        /* Divider(
          color: Colors.yellow,
          thickness: 2.0,
          indent: 0.0,
          endIndent: 0.0,
        ),*/
      )
    ]));
  }
}
