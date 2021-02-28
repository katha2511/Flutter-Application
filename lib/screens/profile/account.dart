import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  var categories = [
    'Food',
    'Transport',
    'Personal',
    'Shopping',
    'Medical',
    'Rent',
    'Movie',
    'Salary'
  ];
  final List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  String _selectedLocation = 'A';

  var model = ['2015', '2016', '2017', '2018', '2019', '2020', '2021'];

  var connector = [
    'ACType2',
    'CCSType2',
    'CHAdeMo',
    'tesla_suc',
    'CCStype1',
    'ACtype1'
  ];
  int selectedRadio;
  bool viewVisible = false;
  bool checkBoxValue = false;
  bool checkBoxValue1 = false;

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

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  // ignore: always_declare_return_types
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TextEditingController _controller = TextEditingController();
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(3.0),
            child: AppBar(
              automaticallyImplyLeading: false,
            )),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  color: Colors.white,
                  height: 60,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 20.0),
                  child: Row(children: [
                    FlatButton(
                      color: Colors.white,
                      height: 10,
                      minWidth: 5,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 20.0,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'Account',
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.0),
                    ),
                  ])),
              Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Form(
                    child: Column(
                      children: [
                        DropdownButtonFormField(
                          items: categories.map((String category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Row(
                                  children: <Widget>[
                                    Text(category),
                                  ],
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            // do other stuff with _category
                            //setState(() => _category = newValue);
                          },

                          //value: _category,
                          decoration: InputDecoration(
                            labelText: 'Car make',
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        DropdownButtonFormField(
                          items: model.map((String category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Row(
                                  children: <Widget>[
                                    Text(category),
                                  ],
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            // do other stuff with _category
                            //setState(() => _category = newValue);
                          },
                          //value: _category,
                          decoration: InputDecoration(
                            labelText: 'Car Model',
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        DropdownButtonFormField(
                          items: connector.map((String category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Row(
                                  children: <Widget>[
                                    Text(category),
                                  ],
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            // do other stuff with _category
                            //setState(() => _category = newValue);
                          },
                          //value: _category,
                          decoration: InputDecoration(
                            labelText: 'Car Connector',
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Email',
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 10, 10, 0)),
                          initialValue: 'abc@gmail.com',
                          enabled: false,
                          //controller: _controller,
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'First Name',
                              hoverColor: Colors.yellow,
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 10, 10, 0)),
                          initialValue: 'xyz',

                          //controller: _controller,
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Last Name',
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 10, 10, 0)),
                          initialValue: 'abc',
                          //controller: _controller,
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 10, right: 15),
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(
                                color: Colors.black26,
                              ),
                            )),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Payment Option',
                                    textAlign: TextAlign.left,
                                  ),
                                  ButtonBar(
                                    alignment: MainAxisAlignment.start,
                                    buttonHeight: 10,
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
                                          Text('Credit/Debit/Wallet'),
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
                                          Text('TAG'),
                                        ],
                                      )
                                    ],
                                  ),
                                ])),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                              border: Border(
                            bottom: BorderSide(
                              color: Colors.black26,
                            ),
                          )),
                          child: Row(
                            children: [
                              Text('Default TAG: '),
                              SizedBox(
                                width: 10.0,
                              ),
                              DropdownButton(
                                value: _selectedLocation,
                                onChanged: (newValue) {
                                  setState(() {
                                    _selectedLocation = newValue;
                                  });
                                },
                                items: _locations.map((location) {
                                  return DropdownMenuItem(
                                    child: Text(location),
                                    value: location,
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(left: 10, right: 15),
                          decoration: BoxDecoration(
                              border: Border(
                            bottom: BorderSide(
                              color: Colors.black26,
                            ),
                          )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Alert Notification'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: checkBoxValue,
                                    onChanged: (bool value) {
                                      setState(() {
                                        checkBoxValue = value;
                                      });
                                    },
                                  ),
                                  Text('On Fault'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: checkBoxValue1,
                                    onChanged: (bool value) {
                                      setState(() {
                                        checkBoxValue1 = value;
                                      });
                                    },
                                  ),
                                  Text('On Stop Charging'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'DNI',
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 10, 10, 0)),
                          initialValue: '12345678',
                          enabled: false,
                          //controller: _controller,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            child: Text('UPDATE'),
                            onPressed: () {},
                            color: Colors.yellow[700],
                            textColor: Colors.white,
                            padding: const EdgeInsets.all(10),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        )));
  }
}
