import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    const rowSpacer = TableRow(children: [
      SizedBox(
        height: 20.0,
      ),
      SizedBox(
        height: 20.0,
      )
    ]);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        title: Text(
          'Contact Us',
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.left,
        ),
        //automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 60.0,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0aO0C1mxZbqp1QAnwdOxE1ihdeotflZ_s3w&usqp=CAU',
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter,
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.white,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Text(
                    'US Office',
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Divider(
                    color: Colors.yellowAccent[700],
                    thickness: 2.0,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Table(columnWidths: {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(4),
                    }, children: [
                      TableRow(children: [
                        Text('Email:',
                            textScaleFactor: 1.5,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          'sales@grid-scape.com',
                          textScaleFactor: 1.5,
                        ),
                      ]),
                      rowSpacer,
                      TableRow(children: [
                        Text('Phone:',
                            textScaleFactor: 1.5,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          '+1 510-894-6030',
                          textScaleFactor: 1.5,
                        ),
                      ]),
                      rowSpacer,
                      TableRow(children: [
                        Text('Address:',
                            textScaleFactor: 1.5,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          '46705 Fremont Blvd, Fremont, CA 94538',
                          textScaleFactor: 1.5,
                        ),
                      ]),
                    ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  color: Colors.white,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Text(
                    'UK Office',
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Divider(
                    color: Colors.yellowAccent[700],
                    thickness: 2.0,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Table(columnWidths: {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(4),
                    }, children: [
                      TableRow(children: [
                        Text('Email:',
                            textScaleFactor: 1.5,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          'sales@grid-scape.com',
                          textScaleFactor: 1.5,
                        ),
                      ]),
                      rowSpacer,
                      TableRow(children: [
                        Text('Phone:',
                            textScaleFactor: 1.5,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          '+(44) 1748 905 005',
                          textScaleFactor: 1.5,
                        ),
                      ]),
                      rowSpacer,
                      TableRow(children: [
                        Text('Address:',
                            textScaleFactor: 1.5,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          '126A Cheam Rd, Sutton, Surrey SM12EB UK',
                          textScaleFactor: 1.5,
                        ),
                      ]),
                    ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  color: Colors.white,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Text(
                    'India Office',
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Divider(
                    color: Colors.yellowAccent[700],
                    thickness: 2.0,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Table(columnWidths: {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(4),
                    }, children: [
                      TableRow(children: [
                        Text('Email:',
                            textScaleFactor: 1.5,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          'sales@grid-scape.com',
                          textScaleFactor: 1.5,
                        ),
                      ]),
                      rowSpacer,
                      TableRow(children: [
                        Text('Phone:',
                            textScaleFactor: 1.5,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          '+(91) 8128426717',
                          textScaleFactor: 1.5,
                        ),
                      ]),
                      rowSpacer,
                      TableRow(children: [
                        Text('Address:',
                            textScaleFactor: 1.5,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          '30, 2nd Flr, Bhagat Colony, Near Sushan Circle, Makarpura, Vadodara, Gujarat 390010, India',
                          textScaleFactor: 1.5,
                        ),
                      ]),
                    ]),
                  ),
                ),
              ])))
            ],
          ),
        ),
      ),
    );
  }
}
