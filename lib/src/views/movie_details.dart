import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_today/src/core/utils/constants.dart';
import 'dart:ui';

import 'package:movie_today/src/widgets/rating.dart';

class MovieMoreDetails extends StatefulWidget {
  final Map movie;

  MovieMoreDetails(this.movie, {Key key}) : super(key: key);
  @override
  _EventsMoreDetailsState createState() => _EventsMoreDetailsState();
}

class _EventsMoreDetailsState extends State<MovieMoreDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CachedNetworkImage(
            imageUrl: widget.movie['image'],
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          //This container allows text to be seen incase image is white
          Container(color: Colors.black.withOpacity(0.1)),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 48, left: 35),
                child: ClipRect(
                  child: new BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: new Container(
                      padding: EdgeInsets.only(left: 0, right: 0),
                      width: 55.0,
                      height: 45.0,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black.withOpacity(0.5)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.keyboard_backspace,
                              color: Colors.white,
                              size: 20,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Text(widget.movie['name'],
                    style: TextStyle(fontSize: 35, color: Colors.white)
                    // .copyWith(color: widget.palette.lightMutedColor.color),
                    ),
                SizedBox(height: 12),
                Container(
                  width: MediaQuery.of(context).size.width - 120,
                  child: SmoothStarRating(
                    starCount: 5,
                    color: Constants.lightBG,
                    allowHalfRating: true,
                    rating: widget.movie['rating'],
                    size: 16.0,
                  ),
                ),
                SizedBox(height: 12),
                Text(widget.movie['category'],
                    style: TextStyle(fontSize: 14, color: Colors.white)
                    // .copyWith(color: widget.palette.lightMutedColor.color),
                    ),
                SizedBox(height: 8),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(widget.movie['description'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.2,
                        )),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Constants.darkPrimary.withOpacity(0.6),
                          offset: Offset(0, 4),
                          blurRadius: 4),
                    ],
                    color: Constants.darkPrimary,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  height: 65,
                  width: double.infinity,
                  child: FlatButton(
                    child: Text(
                      'Buy Ticket',
                      style: TextStyle(
                          color: Colors.white, fontSize: 15, letterSpacing: 1),
                    ),
                    onPressed: () => print('Buy'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
