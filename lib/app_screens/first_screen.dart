import 'package:flutter/material.dart';
import 'toggle.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     Toggle();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
                child: Container(width: 375.0,
                    height: 812.0,
                    color: Colors.white,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 33.0,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width:20.0,
                                  height: 118.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 5.0,

                                        color: Colors.black,
                                        style: BorderStyle.solid),
                                  ),
                                  child: Icon(Icons.keyboard_backspace,size: 20.0,),

                                ),
                                Container(
                                  width: 100.0,
                                ),
                                Container(
                                  child: Center(
                                    child: Text(
                                      'Privacy',
                                      style: TextStyle(
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('     Activity Status',style: TextStyle(fontFamily:'Montserrat',
                                    fontSize:21.0),
                                ),
                                selectunselect(true),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('     Private Account',style: TextStyle(fontFamily:'Montserrat',
                                    fontSize:21.0,),

                                ),
                                selectunselect(false),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('     Location',style: TextStyle(fontFamily:'Montserrat',
                                    fontSize:21.0),
                                ),
                                selectunselect(true),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('     Permission to Tag',style: TextStyle(fontFamily:'Montserrat',
                                    fontSize:21.0),
                                ),
                                selectunselect(true),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('     Date of Year',style: TextStyle(fontFamily:'Montserrat',
                                    fontSize:21.0),
                                ),
                                selectunselect(false),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('     Save To Archive',style: TextStyle(fontFamily:'Montserrat',
                                    fontSize:21.0),
                                ),

                              ],
                            ),
                          ),
                          Container(color:Colors.black,width: 327.0,
                            height: 60.0,
                            child: Row(
                              children: [
                                Text('                        Save',textAlign:TextAlign.center, style: TextStyle(fontFamily:'Montserrat',
                                    fontSize:21.0,color: Colors.white,),

                                ),
                                selectunselect(true),
                              ],
                            ),
                          ),
                        ])
                )
            )
        )
    );

  }



    }
