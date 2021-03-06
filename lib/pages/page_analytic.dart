import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Analytic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _alertdialog(String str) {
      if (str.isEmpty) return;
      AlertDialog alertDialog = new AlertDialog(
        content: new Text(
          str,
          style: new TextStyle(fontSize: 20.0),
        ),
        actions: <Widget>[
          new RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: new Text("OK"),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      );
      showDialog(
        context: context,
        child: alertDialog,
      );
    }

    var data = [
      Sales("Sun", 50),
      Sales("Mon", 70),
      Sales("Tue", 100),
      Sales("Wed", 50),
      Sales("Thu", 145),
      Sales("Fri", 190),
      Sales("Sat", 300),
    ];

    var series = [
      charts.Series(
          domainFn: (Sales sales, _) => sales.day,
          measureFn: (Sales sales, _) => sales.sold,
          id: 'Sales',
          data: data)
    ];

    var chart = charts.BarChart(series);

    return new Container(
//      child: new Center(
      child: new SingleChildScrollView(
//        child: new Column(
//          children: <Widget>[
//            new Container(
//              height: 300.0,
//              // Add box decoration
//              decoration: BoxDecoration(
//                // Box decoration takes a gradient
//                gradient: LinearGradient(
//                  // Where the linear gradient begins and ends
//                  begin: Alignment.topRight,
//                  end: Alignment.bottomLeft,
//                  // Add one stop for each color. Stops should increase from 0 to 1
//                  stops: [0.1, 0.5, 0.7, 0.9],
//                  colors: [
//                    // Colors are easy thanks to Flutter's Colors class.
//                    Colors.grey[800],
//                    Colors.grey[700],
//                    Colors.grey[600],
//                    Colors.grey[500],
//                  ],
//                ),
//              ),
//              child: new Center(
//                child: new Column(
//                  children: <Widget>[
//                    new Padding(
//                      padding: new EdgeInsets.all(20.0),
//                    ),
//                    new Image.asset(
//                      "img/anatomy.png",
//                      height: 240.0,
//                    )
//                  ],
//                ),
//              ),
//              // ),
//              // new Container(
//              //   child:
//              // new Text("AW")
//            ),
////            new Container(
////            child:
////            new ListView(
////              children: <Widget>[
////                new ListTutorial(
////                    gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg",
////                    judul: "HTML"),
////                new ListTutorial(
////                    gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg",
////                    judul: "HTML 2"),
////              ],
////            ),
////            ),
//             new Text("HOLA HAHAHA")
//          ],
//        ),

        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 120.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                // A fixed-height child.
//                  color: Colors.yellow,
//                  height: 120.0,
//                              new Container(
                height: 300.0,
                // Add box decoration
                decoration: BoxDecoration(
                  // Box decoration takes a gradient
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      Colors.grey[800],
                      Colors.grey[700],
                      Colors.grey[600],
                      Colors.grey[500],
                    ],
                  ),
                ),
                child: new Center(
                  child: new Column(
                    children: <Widget>[
                      new Padding(
                        padding: new EdgeInsets.all(20.0),
                      ),
                      new Image.asset(
                        "img/anatomy.png",
                        height: 240.0,
                      )
                    ],
                  ),
                ),
                // ),
                // new Container(
                //   child:
                // new Text("AW")
              ),
//                ),
              new Container(
                  // Another fixed-height child.
//                  color: Colors.green,
                  height: 200.0,
                  margin:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                  child: new Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: new Container(
                      child: chart,
                    ),
                  )
//                new ClipRRect(
//                  borderRadius: BorderRadius.circular(40.0),
//                  child: new Container(
//                  color: Colors.grey,
//                  height: 50.0,
//
//                ),
//                ),
//                    )
//            new ListView(
//              children: <Widget>[
//                new ListTutorial(
//                    gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg",
//                    judul: "HTML"),
//                new ListTutorial(
//                    gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg",
//                    judul: "HTML 2"),
//              ],
//            ),
                  ),
              new Container(
                  height: 250.0,
                  margin:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                  child: new Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Center(
                        child: new Text(
                          "Recomendation".toUpperCase(),
                        ),
                      ),
                      new Padding(padding: EdgeInsets.only(bottom: 15.0)),
                      new Container(
                        height: 70.0,
                        child: new Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: new Container(
                            child: Center(
                              child: new Text(
                                "Regular Deadlift",
                                style: new TextStyle(
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                          ),
                        ),
                      ),
                      new Container(
                        height: 70.0,
                        child: new Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: new Container(
                            child: Center(
                              child: new Text(
                                "Push Up",
                                style: new TextStyle(
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                          ),
                        ),
                      ),
                      new Container(
                        height: 70.0,
                        child: new Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: new Container(
                            child: Center(
                              child: new Text(
                                "Running",
                                style: new TextStyle(
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),

              new Container(
                height: 50.0,
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                child: new ButtonTheme(
                    minWidth: 400.0,
                    height: 100.0,
                    child: RaisedButton(
                      color: Colors.blue,
                      onPressed: () {
                        _alertdialog("Under Development");
                      },
                      child: new Text(
                        "Edit Profile".toUpperCase(),
                        style: new TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            ],
          ),
        ),

//        ),
      ),
    );
  }
}

class Sales {
  final String day;
  final int sold;
  Sales(this.day, this.sold);
}
