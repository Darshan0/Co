import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatefulWidget{
  @override
  SearchScreenState createState() {
    return SearchScreenState();
  }
}

class SearchScreenState extends State<SearchScreen>{
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(allowFontScaling: true , height: 812 , width: 375)..init(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(
            top: ScreenUtil.getInstance().setHeight(30),
            left: ScreenUtil.getInstance().setWidth(32),
            right: ScreenUtil.getInstance().setWidth(32)
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('What you want?',style: TextStyle(fontFamily: 'Gilroy-ExtraBold',fontSize: ScreenUtil.getInstance().setSp(18), color: Colors.black)),
                    GestureDetector(
                      onTap: (){},
                      child: Text('View all',style: TextStyle(fontFamily: 'Inter-Regular',fontSize: ScreenUtil.getInstance().setSp(12), color: Colors.black)),
                    )
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setHeight(23)
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        width: ScreenUtil.getInstance().setWidth(60),
                        height: ScreenUtil.getInstance().setHeight(90),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: ScreenUtil.getInstance().setWidth(60),
                              height: ScreenUtil.getInstance().setHeight(60),
                              decoration: BoxDecoration(
                                color: Color(0x90E79862),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(Icons.group_work),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: ScreenUtil.getInstance().setHeight(6)
                              ),
                              child: Center(
                                child:Text(
                                  'Group',
                                  style: TextStyle(
                                    fontFamily: 'Inter-Regular',
                                    fontSize: ScreenUtil.getInstance().setSp(12) ,
                                    color: Colors.grey
                                  ),
                                ),
                              )
                            )
                          ],
                        ),
                      ),
                           Container(
                        width: ScreenUtil.getInstance().setWidth(60),
                        height: ScreenUtil.getInstance().setHeight(90),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: ScreenUtil.getInstance().setWidth(60),
                              height: ScreenUtil.getInstance().setHeight(60),
                              decoration: BoxDecoration(
                                color: Color(0x90E79862),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(Icons.group_work),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: ScreenUtil.getInstance().setHeight(6)
                              ),
                              child: Center(
                                child:Text(
                                  'Group',
                                  style: TextStyle(
                                    fontFamily: 'Inter-Regular',
                                    fontSize: ScreenUtil.getInstance().setSp(12) ,
                                    color: Colors.grey
                                  ),
                                ),
                              )
                            )
                          ],
                        ),
                      ),
                           Container(
                        width: ScreenUtil.getInstance().setWidth(60),
                        height: ScreenUtil.getInstance().setHeight(90),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: ScreenUtil.getInstance().setWidth(60),
                              height: ScreenUtil.getInstance().setHeight(60),
                              decoration: BoxDecoration(
                                color: Color(0x90E79862),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(Icons.group_work),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: ScreenUtil.getInstance().setHeight(6)
                              ),
                              child: Center(
                                child:Text(
                                  'Group',
                                  style: TextStyle(
                                    fontFamily: 'Inter-Regular',
                                    fontSize: ScreenUtil.getInstance().setSp(12) ,
                                    color: Colors.grey
                                  ),
                                ),
                              )
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}