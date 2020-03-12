import 'package:co/homepage_screen.dart';
import 'package:co/search_screen.dart';
import 'package:co/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigation_dot_bar/navigation_dot_bar.dart';

class NavigationScreen extends StatefulWidget{
  @override
  NavigationScreenState createState() {
    return NavigationScreenState();
  }

}

class NavigationScreenState extends State<NavigationScreen>{
  int index =0;
  List<Widget> _children = new List();

  @override
  void initState() {
    _children = [
      new Home(),
      new SearchScreen(),
      new Text('Bookings')
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: _children[index],
          
          bottomNavigationBar: BottomNavigationDotBar(
            activeColor: Color(0xFF424242),
            items: <BottomNavigationDotBarItem>[
              BottomNavigationDotBarItem(
                icon: Icons.home,
                onTap: (){
                  setState(() {
                    index = 0;
                  });
                }
              ),
              BottomNavigationDotBarItem(
                icon: Icons.search,
                onTap: (){
                  setState(() {
                    index = 1;
                  });
                }
              ),
              BottomNavigationDotBarItem(
                icon: Icons.bookmark,
                onTap: (){
                  setState(() {
                    index = 2;
                  });
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}