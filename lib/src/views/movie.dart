import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:movie_today/src/model/data.dart';
import 'package:movie_today/src/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_today/src/views/movie_details.dart';

class MoviePage extends StatefulWidget {
  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  int selectedIdx = 0;

  final List<String> categories = [
    'Premiere',
    'Most popular',
    'Preview',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
               Container(
                    padding: EdgeInsets.only(top: 65, right: 45),                 
                 child:  CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/man.jpg'),
                ),
               )
              ],
            ),
            Container(
              height: 220,
              width: double.infinity,
              color: Constants.lightBG,
              // color: Colors.black,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Choose a ',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: Constants.fontName,
                                  fontSize: 30),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'movie for today',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: Constants.fontName,
                                  fontSize: 30),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0, style: BorderStyle.none),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 18),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.1),
                        hintText: 'Find a movie that interests you',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0),
              margin: EdgeInsets.only(top: 0, bottom: 0),
              height: 75.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIdx = index;
                      });
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          color: index == selectedIdx
                              ? Theme.of(context).primaryColor
                              : Colors.grey[500],
                          fontWeight: FontWeight.w600,
                          fontFamily: Constants.fontName,
                          fontSize: 21,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            getDummyDataUI(),
          ],
        ),
      ),
    );
  }

  Widget getDummyDataUI() {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.only(top: 10, left: 5, right: 5),
      padding: EdgeInsets.only(top: 0, bottom: 0),
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: moviedata == null ? 0 : moviedata.length,
        itemBuilder: (BuildContext context, int index) {
          Movie movie = moviedata.toList()[index];
          return Padding(
            padding: const EdgeInsets.only(right: 0),
            child: InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(
                        movie.image,
                        height: 300,
                        width: 235,
                        fit: BoxFit.cover,
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 14, left: 14),
                            child: ClipRect(
                              child: new BackdropFilter(
                                filter: new ImageFilter.blur(
                                    sigmaX: 5.0, sigmaY: 5.0),
                                child: new Container(
                                  padding: EdgeInsets.only(left: 8, right: 6),
                                  width: 50.0,
                                  height: 25.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.grey.shade200
                                          .withOpacity(0.5)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.solidStar,
                                        size: 10,
                                        color: Constants.lightBG,
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        movie.rating,
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 3),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            width: 235,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.8),
                                  Colors.black.withOpacity(0.7),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.4),
                                  Colors.black.withOpacity(0.1),
                                  Colors.black.withOpacity(0.05),
                                  Colors.black.withOpacity(0.025),
                                ],
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container())),
                      ),
                      Positioned(
                        bottom: 25,
                        left: 8,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(movie.name,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: true,
                                style: TextStyle(
                                    fontFamily: Constants.fontName,
                                    color: Constants.lightPrimary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return MovieMoreDetails(movie);
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
