import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  bool isSwitched = false;
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  bool isSwitched4 = false;
  bool isSwitched5 = false;
  bool isSwitched6 = false;
  bool isSwitched7 = false;
  bool isSwitched8 = false;
  bool isSwitched9 = false;
  bool isSwitched10 = false;
  bool isSwitched11 = false;
  bool isSwitched12 = false;
  bool isSwitched13 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            centerTitle: false,
            titleSpacing: 0.0,
            title: Text(
              'Filters',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.left,
            )),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: 80,
                width: double.infinity,
                padding: EdgeInsets.only(left: 15.0, top: 20.0, bottom: 20.0),
                child: Text(
                  'Connector Status',
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              Table(
                columnWidths: {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(4),
                  2: FlexColumnWidth(1),
                },
                children: [
                  TableRow(children: [
                    Icon(
                      Icons.charging_station_rounded,
                      color: Colors.green,
                    ),
                    Text(
                      'Available',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 20),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.yellow[100],
                      activeColor: Colors.blue,
                    ),
                  ]),
                  TableRow(children: [
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                  ]),
                  TableRow(
                    children: [
                      Icon(
                        Icons.charging_station_rounded,
                        color: Colors.purple,
                      ),
                      Text(
                        'Preparing',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 20),
                      ),
                      Switch(
                        value: isSwitched1,
                        onChanged: (value) {
                          setState(() {
                            isSwitched1 = value;
                            print(isSwitched1);
                          });
                        },
                        activeTrackColor: Colors.yellow[100],
                        activeColor: Colors.blue,
                      ),
                    ],
                  ),
                  TableRow(children: [
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                  ]),
                  TableRow(
                    children: [
                      Icon(
                        Icons.charging_station_rounded,
                        color: Colors.orange[400],
                      ),
                      Text(
                        'Charging',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 20),
                      ),
                      Switch(
                        value: isSwitched2,
                        onChanged: (value) {
                          setState(() {
                            isSwitched2 = value;
                            print(isSwitched2);
                          });
                        },
                        activeTrackColor: Colors.yellow[100],
                        activeColor: Colors.blue,
                      ),
                    ],
                  ),
                  TableRow(children: [
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                  ]),
                  TableRow(
                    children: [
                      Icon(
                        Icons.charging_station_rounded,
                        color: Colors.red[300],
                      ),
                      Text(
                        'Finishing',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 20),
                      ),
                      Switch(
                        value: isSwitched3,
                        onChanged: (value) {
                          setState(() {
                            isSwitched3 = value;
                            print(isSwitched3);
                          });
                        },
                        activeTrackColor: Colors.yellow[100],
                        activeColor: Colors.blue,
                      ),
                    ],
                  ),
                  TableRow(children: [
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                  ]),
                  TableRow(
                    children: [
                      Icon(
                        Icons.charging_station_rounded,
                        color: Colors.grey,
                      ),
                      Text(
                        'Offline',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 20),
                      ),
                      Switch(
                        value: isSwitched4,
                        onChanged: (value) {
                          setState(() {
                            isSwitched4 = value;
                            print(isSwitched4);
                          });
                        },
                        activeTrackColor: Colors.yellow[100],
                        activeColor: Colors.blue,
                      ),
                    ],
                  ),
                  TableRow(children: [
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                  ]),
                  TableRow(
                    children: [
                      Icon(
                        Icons.charging_station_rounded,
                        color: Colors.red,
                      ),
                      Text(
                        'Faulted',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 20),
                      ),
                      Switch(
                        value: isSwitched5,
                        onChanged: (value) {
                          setState(() {
                            isSwitched5 = value;
                            print(isSwitched5);
                          });
                        },
                        activeTrackColor: Colors.yellow[100],
                        activeColor: Colors.blue,
                      ),
                    ],
                  ),
                  TableRow(children: [
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                  ]),
                  TableRow(
                    children: [
                      Icon(
                        Icons.charging_station_rounded,
                        color: Colors.pinkAccent,
                      ),
                      Text(
                        'Suspended EV',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 20),
                      ),
                      Switch(
                        value: isSwitched6,
                        onChanged: (value) {
                          setState(() {
                            isSwitched6 = value;
                            print(isSwitched6);
                          });
                        },
                        activeTrackColor: Colors.yellow[100],
                        activeColor: Colors.blue,
                      ),
                    ],
                  ),
                  TableRow(children: [
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                  ]),
                  TableRow(
                    children: [
                      Icon(
                        Icons.charging_station_rounded,
                        color: Colors.brown,
                      ),
                      Text(
                        'Suspended EVSE',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 20),
                      ),
                      Switch(
                        value: isSwitched7,
                        onChanged: (value) {
                          setState(() {
                            isSwitched7 = value;
                            print(isSwitched7);
                          });
                        },
                        activeTrackColor: Colors.yellow[100],
                        activeColor: Colors.blue,
                      ),
                    ],
                  ),
                  TableRow(children: [
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                    SizedBox(height: 7),
                  ]),
                  TableRow(
                    children: [
                      Icon(
                        Icons.charging_station_rounded,
                        color: Colors.black,
                      ),
                      Text(
                        'Unavailable',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 20),
                      ),
                      Switch(
                        value: isSwitched8,
                        onChanged: (value) {
                          setState(() {
                            isSwitched8 = value;
                            print(isSwitched8);
                          });
                        },
                        activeTrackColor: Colors.yellow[100],
                        activeColor: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                color: Colors.white,
                child: Divider(
                  color: Colors.grey[350],
                  thickness: 2.0,
                  indent: 0.0,
                  endIndent: 0.0,
                ),
              ),
              Container(
                color: Colors.white,
                height: 80,
                width: double.infinity,
                padding: EdgeInsets.only(left: 15.0, top: 20.0, bottom: 20.0),
                child: Text(
                  'Connector Type',
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              Table(columnWidths: {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(4),
                2: FlexColumnWidth(1),
              }, children: [
                TableRow(children: [
                  Icon(
                    Icons.charging_station_rounded,
                    color: Colors.green,
                  ),
                  Text(
                    'CCSType1(SAE Combo)',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20),
                  ),
                  Switch(
                    value: isSwitched9,
                    onChanged: (value) {
                      setState(() {
                        isSwitched9 = value;
                        print(isSwitched9);
                      });
                    },
                    activeTrackColor: Colors.yellow[100],
                    activeColor: Colors.blue,
                  ),
                ]),
                TableRow(children: [
                  SizedBox(height: 7),
                  SizedBox(height: 7),
                  SizedBox(height: 7),
                ]),
                TableRow(
                  children: [
                    Icon(
                      Icons.charging_station_rounded,
                      color: Colors.purple,
                    ),
                    Text(
                      'ACType1 (J1772)',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 20),
                    ),
                    Switch(
                      value: isSwitched10,
                      onChanged: (value) {
                        setState(() {
                          isSwitched10 = value;
                          print(isSwitched10);
                        });
                      },
                      activeTrackColor: Colors.yellow[100],
                      activeColor: Colors.blue,
                    ),
                  ],
                ),
                TableRow(children: [
                  SizedBox(height: 7),
                  SizedBox(height: 7),
                  SizedBox(height: 7),
                ]),
                TableRow(
                  children: [
                    Icon(
                      Icons.charging_station_rounded,
                      color: Colors.orange[400],
                    ),
                    Text(
                      'CHAdeMO',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 20),
                    ),
                    Switch(
                      value: isSwitched11,
                      onChanged: (value) {
                        setState(() {
                          isSwitched11 = value;
                          print(isSwitched11);
                        });
                      },
                      activeTrackColor: Colors.yellow[100],
                      activeColor: Colors.blue,
                    ),
                  ],
                ),
                TableRow(children: [
                  SizedBox(height: 7),
                  SizedBox(height: 7),
                  SizedBox(height: 7),
                ]),
                TableRow(
                  children: [
                    Icon(
                      Icons.charging_station_rounded,
                      color: Colors.red[300],
                    ),
                    Text(
                      'CCSType2',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 20),
                    ),
                    Switch(
                      value: isSwitched12,
                      onChanged: (value) {
                        setState(() {
                          isSwitched12 = value;
                          print(isSwitched12);
                        });
                      },
                      activeTrackColor: Colors.yellow[100],
                      activeColor: Colors.blue,
                    ),
                  ],
                ),
                TableRow(children: [
                  SizedBox(height: 7),
                  SizedBox(height: 7),
                  SizedBox(height: 7),
                ]),
                TableRow(
                  children: [
                    Icon(
                      Icons.charging_station_rounded,
                      color: Colors.grey,
                    ),
                    Text(
                      'ACType2 (Mennekes)',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 20),
                    ),
                    Switch(
                      value: isSwitched13,
                      onChanged: (value) {
                        setState(() {
                          isSwitched13 = value;
                          print(isSwitched13);
                        });
                      },
                      activeTrackColor: Colors.yellow[100],
                      activeColor: Colors.blue,
                    ),
                  ],
                ),
              ])
            ],
          ),
        )));
  }
}
