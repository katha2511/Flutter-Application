import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transactions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Transactions(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  DateTime _date = DateTime.now();
  DateTime _todate = DateTime.now();

  bool viewVisible = false;
  String urlPDFpath = '';
  final pdfUrl = 'http://www.pdf995.com/samples/pdf.pdf';
  bool downloading = false;
  var progressString = '';

  @override
  void initState() {
    super.initState();

    getFileFromUrl('http://www.pdf995.com/samples/pdf.pdf').then((f) {
      setState(() {
        urlPDFpath = f.path;
      });
    });
  }

  void showWidget() {
    setState(() {
      viewVisible = true;
    });
  }

  void _selectDate() async {
    final newDate = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2015),
      lastDate: DateTime(2030),
      helpText: 'Select a date',
      builder: (context, child) {
        return Theme(
          data: ThemeData.dark(), // This will change to light theme.
          child: child,
        );
      },
    );
    if (newDate != null) {
      setState(() {
        _date = newDate;
      });
    }
  }

  void toDate() async {
    final newToDate = await showDatePicker(
      context: context,
      initialDate: _todate,
      firstDate: DateTime(2015),
      lastDate: DateTime(2030),
      helpText: 'Select a date',
      builder: (context, child) {
        return Theme(
          data: ThemeData.dark(), // This will change to light theme.
          child: child,
        );
      },
    );
    if (newToDate != null) {
      setState(() {
        _todate = newToDate;
      });
    }
  }

  Future<File> getFileFromUrl(String url) async {
    try {
      var data = await http.get(url);
      var bytes = data.bodyBytes;
      var dir = await getApplicationDocumentsDirectory();
      // ignore: omit_local_variable_types
      File file = File('${dir.path}/mypdf.pdf');
      var assetfile = await file.writeAsBytes(bytes);
      return assetfile;
    } catch (e) {
      throw Exception('error opening file');
    }
  }

  // static var httpClient = HttpClient();
  // Future<File> _downloadFile(String url, String filename) async {
  //   var request = await httpClient.getUrl(Uri.parse(url));
  //   var response = await request.close();
  //   var bytes = await consolidateHttpClientResponseBytes(response);
  //   var dir = (await getApplicationDocumentsDirectory()).path;
  //   var file = File('$dir/$filename');
  //   await file.writeAsBytes(bytes);
  //   return file;
  // }

  // Future<void> downloadFile() async {
  //   var dio = Dio();
  //   try {
  //     var dir = await getApplicationDocumentsDirectory();

  //     await dio.download(pdfUrl, '${dir.path}/myPdf.pdf',
  //         onReceiveProgress: (rec, total) {
  //       print('Rec: $rec, Total : $total');

  //       setState(() {
  //         downloading = true;
  //         progressString = ((rec / total) * 100).toStringAsFixed(0) + '%';
  //       });
  //     });
  //   } catch (e) {
  //     print(e);
  //   }
  //   setState(() {
  //     downloading = false;
  //     progressString = 'Completed';
  //   });
  //   print('Download completed');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(3.0),
          child: AppBar(
            automaticallyImplyLeading: false,
          )),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 9.0,
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                onPressed: _selectDate,
                child: Text(
                  'From:' '${_date.toLocal()}'.split(' ')[0],
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: toDate,
                  child: Text(
                    'To:' '${_todate.toLocal()}'.split(' ')[0],
                    style: TextStyle(fontSize: 15, color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  color: Colors.yellow[700],
                  onPressed: showWidget,
                  child: Text(
                    'SEARCH',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                )),
            Divider(
              color: Colors.black,
              thickness: 2.0,
              indent: 0.0,
              endIndent: 0.0,
            ),
            Visibility(
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                visible: viewVisible,
                child: Column(children: [
                  Container(
                      alignment: Alignment.topLeft,
                      width: double.infinity,
                      color: Colors.white,
                      margin: EdgeInsets.only(top: 50),
                      child: FlatButton(
                          onPressed: () {
                            if (urlPDFpath != null) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PDFviewPage(path: urlPDFpath)));
                            }
                          },
                          child: Text(
                            '${_date.toLocal()}'.split(' ')[0],
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            textAlign: TextAlign.start,
                          ))),
                  Container(
                    color: Colors.white,
                    child: Divider(
                      color: Colors.yellow,
                      thickness: 2.0,
                      indent: 6.0,
                      endIndent: 6.0,
                    ),
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      width: double.infinity,
                      color: Colors.white,
                      margin: EdgeInsets.only(top: 5, left: 0),
                      child: FlatButton(
                          onPressed: () {
                            if (urlPDFpath != null) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PDFviewPage(path: urlPDFpath)));
                            }
                          },
                          child: Text(
                            '${_todate.toLocal()}'.split(' ')[0],
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            textAlign: TextAlign.start,
                          )))
                ])),
          ],
        ),
      ),
    );
  }
}

class PDFviewPage extends StatefulWidget {
  final String path;

  // ignore: sort_constructors_first
  const PDFviewPage({Key key, this.path}) : super(key: key);
  @override
  _PDFviewPageState createState() => _PDFviewPageState();
}

class _PDFviewPageState extends State<PDFviewPage> {
  int _totalPages = 0;
  int _currentPage = 0;
  bool pdfReady = false;
  PDFViewController _pdfViewController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF'),
      ),
      body: Stack(
        children: <Widget>[
          PDFView(
            filePath: widget.path,
            autoSpacing: true,
            enableSwipe: true,
            pageSnap: true,
            swipeHorizontal: true,
            nightMode: false,
            onError: (e) {
              print(e);
            },
            onRender: (_pages) {
              setState(() {
                _totalPages = _pages;
                pdfReady = true;
              });
            },
            onViewCreated: (PDFViewController vc) {
              _pdfViewController = vc;
            },
            onPageChanged: (int page, int total) {
              setState(() {});
            },
            onPageError: (page, e) {},
          ),
          !pdfReady
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Offstage()
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _currentPage > 0
              ? FloatingActionButton.extended(
                  backgroundColor: Colors.red,
                  label: Text('Go to ${_currentPage - 1}'),
                  onPressed: () {
                    _currentPage -= 1;
                    _pdfViewController.setPage(_currentPage);
                  },
                )
              : Offstage(),
          _currentPage + 1 < _totalPages
              ? FloatingActionButton.extended(
                  backgroundColor: Colors.green,
                  label: Text('Go to ${_currentPage + 1}'),
                  onPressed: () {
                    _currentPage += 1;
                    _pdfViewController.setPage(_currentPage);
                  },
                )
              : Offstage(),
        ],
      ),
    );
  }
}
