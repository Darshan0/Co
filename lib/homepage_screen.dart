import 'package:co/app_utils/app_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget{
  @override
  HomeState createState() {
    return HomeState();
  }

}


class HomeState extends State<Home>{
  
  int selectedIndex = 0;
  List<String> category = ['Work Cafes','Coworking Spaces'];

  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(allowFontScaling: true , width: 375 , height: 812)..init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[

              Container(
                padding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setHeight(30),
                  left: ScreenUtil.getInstance().setWidth(32),
                  right: ScreenUtil.getInstance().setWidth(32)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    
                    Text('${AppUtils.getGreetingMsg()},\nDarshan' , style: TextStyle( fontFamily: 'Inter-SemiBold',  fontSize: ScreenUtil.getInstance().setSp(16) , color: Color(0xFF2C2F3A)),),
                    GestureDetector(
                      onTap: (){
                        
                      },
                      child: Container(
                        width: ScreenUtil.getInstance().setHeight(40),
                        height: ScreenUtil.getInstance().setWidth(40),
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: new BorderRadius.all(Radius.circular(5))
                        ),
                        child: Icon(Icons.people , color : Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setHeight(20),
                  left: ScreenUtil.getInstance().setWidth(32),
                  right: ScreenUtil.getInstance().setWidth(32)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Find more',style: TextStyle(fontFamily: 'Gilroy-ExtraBold',fontSize: ScreenUtil.getInstance().setSp(30), color: Colors.black)),
                  ],
                )
              ),
              Container(
                height: ScreenUtil.getInstance().setHeight(80) ,
                  padding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setHeight(23),
                  left: ScreenUtil.getInstance().setWidth(32),
                ),
                child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedIndex =  index;
                        });
                      }, 
                       child:Padding(
                         padding: EdgeInsets.only(
                           right: ScreenUtil.getInstance().setWidth(20)
                         ),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text(
                               '${category.elementAt(index)}',
                               style: TextStyle(
                                 fontFamily: 'Inter-SemiBold',
                                 fontSize: ScreenUtil.getInstance().setSp(16),
                                 color: selectedIndex ==  index ? Color(0xFF332519) : Colors.grey,
                               ),
                             ),
                             Visibility(
                               visible: selectedIndex == index ? true : false,
                               child: Container(
                                 width: ScreenUtil.getInstance().setHeight(10),
                                 height: ScreenUtil.getInstance().setHeight(4),
                                 decoration: BoxDecoration(
                                   color: Colors.orange,
                                   borderRadius: BorderRadius.all(Radius.circular(5))
                                 )
                               ),
                             ),
                           ],
                         )
                       )
                    );
                  },
                ),
              ),
              Container(
                height: ScreenUtil.getInstance().setHeight(260),
                 padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(32),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: ScreenUtil.getInstance().setWidth(180),
                      height: ScreenUtil.getInstance().setHeight(260),
                      margin: EdgeInsets.only(
                        right: ScreenUtil.getInstance().setWidth(15)
                      ),

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: ScreenUtil.getInstance().setHeight(200),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            width: double.infinity,
                            height: ScreenUtil.getInstance().setHeight(50),
                            padding: EdgeInsets.only(
                              top: ScreenUtil.getInstance().setHeight(7),
                              left: ScreenUtil.getInstance().setWidth(4)
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Starbucks' , 
                                  style: TextStyle(
                                    fontFamily: 'Inter-Semibold', 
                                    fontSize: ScreenUtil.getInstance().setSp(15),
                                    color: Colors.black
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: ScreenUtil.getInstance().setHeight(2)
                                  ),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.grey,
                                          size: ScreenUtil.getInstance().setHeight(15),
                                        ),
                                        SizedBox(
                                          width: ScreenUtil.getInstance().setWidth(8),
                                        ),
                                        Text(
                                          'Indiranagar',
                                          style: TextStyle(
                                            fontFamily: 'Inter-Regular',
                                            fontSize: ScreenUtil.getInstance().setSp(13),
                                            color: Colors.grey
                                          ),
                                        ),
                                      ]
                                    ),
                                  )
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    );
                  },
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setHeight(20),
                  left: ScreenUtil.getInstance().setWidth(32),
                  right: ScreenUtil.getInstance().setWidth(32)
                ),
                child: Text('Around you',style: TextStyle(fontFamily: 'Gilroy-ExtraBold',fontSize: ScreenUtil.getInstance().setSp(30), color: Colors.black)),
              ),
              Container(
                height: ScreenUtil.getInstance().setHeight(200),
                 padding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setHeight(5),
                  left: ScreenUtil.getInstance().setWidth(32),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: ScreenUtil.getInstance().setWidth(300),
                      height: ScreenUtil.getInstance().setHeight(180),
                      margin: EdgeInsets.only(
                        right: ScreenUtil.getInstance().setWidth(15)
                      ),

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: ScreenUtil.getInstance().setHeight(180),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                              ],
                            ),
                          ),
                        ],
                      )
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}