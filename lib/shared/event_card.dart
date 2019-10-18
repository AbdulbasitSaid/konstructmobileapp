import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:konstructapp/shared/host_label.dart';

class EventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
//        Image.network(
//          'https://blogmedia.evbstatic.com/wp-content/uploads/wpmulti/sites/8/shutterstock_199419065.jpg',
//        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: <Widget>[
              Container(
                height: height * 0.3,
                width: width * 0.9,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    image: AssetImage(
                      'assets/images/construction.jpg',
                    ),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: new HostLabel(height: height, width: width),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            child: Text('235'),
                          ),
                          Icon(
                            Icons.message,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            child: Text('35'),
                          ),
                          Icon(
                            FontAwesomeIcons.heartbeat,
                            color: Colors.red[700],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            child: Text('23'),
                          ),
                          Icon(
                            FontAwesomeIcons.heartBroken,
                            color: Colors.red[700],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        new AttendCount(),
      ],
    );
  }
}

class AttendCount extends StatelessWidget {
  const AttendCount({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 15,
      top: MediaQuery.of(context).size.height * 27 / 100,
      child: Container(
        height: 70,
        width: 70,
        padding: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
        ),
        child: Container(
          height: 50,
          width: 50,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
//                border: Border.all(width: 6.0, color: Colors.white),
            color: Colors.orange,
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: Center(
              child: Text(
                '300',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
