import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: false,
          titleSpacing: 0.0,
          title: Text(
            'About Us',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.left,
          )),
      body: Center(
          child: Container(
        margin: EdgeInsets.only(top: 10),
        //padding: EdgeInsets.all(10),
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
            Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 60),
                child: Center(
                    child: Text(
                  'Founded in 2013, Gridscape Solutions is a software and service company that specializes in designing and developing a broad range of smart energy solutions. Our core competency is to leverage technological innovations and provide leadership. Our solutions provide operational efficiency and savings to our customers, in addition to creating new sources of revenue.',
                  style: TextStyle(fontSize: 20, fontFamily: 'calibri'),
                ))),
            // Spacer(),
            // Align(
            //     alignment: FractionalOffset.bottomCenter,
            //     child: Container(
            //       //margin: EdgeInsets.only(bottom: 30),
            //       height: 60,
            //       width: double.infinity,
            //       color: Colors.blue,
            //       padding: EdgeInsets.only(top: 10, bottom: 10),
            //       child: Text(
            //         'VERSION: 1.4.49',
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 15,
            //         ),
            //         textAlign: TextAlign.center,
            //       ),
            //     )),
            Spacer(),
            Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  height: 60,
                  width: double.infinity,
                  child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(10),
                      onPressed: () {},
                      child: Text(
                        'VERSION 1.4.49',
                        style: TextStyle(fontSize: 20),
                      )),
                )),
          ],
        ),
      )),
    );
  }
}
