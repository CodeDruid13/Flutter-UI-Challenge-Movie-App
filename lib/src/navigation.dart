import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_today/src/core/utils/constants.dart';


import 'package:movie_today/src/views/movie.dart';
import 'package:movie_today/src/views/favorites.dart';
import 'package:movie_today/src/views/calendar.dart';


class NavigationPage extends StatefulWidget {
  NavigationPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  Widget callPage(int _selectedBar){
    switch (_selectedBar) {
      case 0 : return MoviePage();
      case 1 : return FavoritePage();
      case 2 : return CalendarPage(); 

      break;
      default:
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.callPage(this._cIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _cIndex,
        type: BottomNavigationBarType.fixed , 
        selectedItemColor: Constants.darkAccent, 
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.film,size: 22,),
              title: new Text('', style: TextStyle(fontSize: 1),)
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bookmark,size: 22,),
              title: new Text('', style: TextStyle(fontSize: 1),)
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.calendar,size: 22,),
              title: new Text('', style: TextStyle(fontSize: 1),)
          ), 
        ],
        onTap: (index){
          _incrementTab(index);
        },
      ),
    );
  }



}
