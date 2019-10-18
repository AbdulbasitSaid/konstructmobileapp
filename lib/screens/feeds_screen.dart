import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:konstructapp/shared/event_card.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Image.asset(
              'assets/images/logo1.png',
              height: MediaQuery.of(context).size.height * 4 / 100,
              width: MediaQuery.of(context).size.width * 20 / 100,
            ),
            actions: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Friends',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          margin: EdgeInsets.only(right: 20),
                        ),
                        Container(
                          child: Text(
                            'Public',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          margin: EdgeInsets.only(right: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            backgroundColor: Colors.white,
            expandedHeight: MediaQuery.of(context).size.height * 2 / 100,
            pinned: true,
//            flexibleSpace: Column(
//              verticalDirection: VerticalDirection.down,
////              centerTitle: true,
//              children: <Widget>[
//                Row(
//                  children: <Widget>[Text('Live Events')],
//                )
//              ],
//            ),
          ),
          SliverPersistentHeader(
            delegate: CustomSliverDelegate(
              expandedHeight: MediaQuery.of(context).size.height * 20 / 100,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return EventCard();
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final bool hideTitleWhenExpanded;

  CustomSliverDelegate({
    @required this.expandedHeight,
    this.hideTitleWhenExpanded = true,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: MediaQuery.of(context).size.height * 20 / 100,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1.0, 1.0),
            blurRadius: 10.0,
          ),
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1.0, 1.0),
            blurRadius: 10.0,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //Live Events
                  Text(
                    'Live',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: 170,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 150,
                          child: Stack(
//                    alignment: Alignment.topLeft,
//                    fit: StackFit.loose,
                            children: <Widget>[
                              Positioned(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/construction.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                left: MediaQuery.of(context).size.width *
                                    16 /
                                    100,
                              ),
                              Positioned(
                                left: MediaQuery.of(context).size.width *
                                    12 /
                                    100,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/construction.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left:
                                    MediaQuery.of(context).size.width * 4 / 100,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/construction.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: MediaQuery.of(context).size.width * 0.30,
                                child: Center(
                                  child: Icon(
                                    Icons.chevron_right,
                                    size: 40,
                                  ),
                                ),
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
            Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/user.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
//                  height: 50,
                  width: MediaQuery.of(context).size.width * 60 / 100,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: Colors.orange,
                    ),
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(50),
                      left: Radius.circular(50),
                    ),
                  ),
                  padding: EdgeInsets.all(
                    8.0,
                  ),
                  child: Text(
                    'new Post',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 120;

  @override
  double get minExtent => 120;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
