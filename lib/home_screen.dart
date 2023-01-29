// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text('Sip n Pee'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_important,
            ),
            onPressed:
                () {}, //onNotification // onPressed takes an anonymous function
          ),
          IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {} //print('')},)
              ),
        ],
        centerTitle: true, //centre the title of app bar
        elevation:
            15.0, // the shadow size under the app bar, it takes a float value
        //backgroundColor: Colors.red, //the background color of the app bar
      ),
      // the app bar is divided into 3 section
      // Leading section ( the most left third )
      // Title ( the middle section )
      // Action ( the most right section )
      body: Column(
        children: [
          Container(
            width: 200.0, //same width as the picture
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                     //borderRadius: BorderRadiusDirectional.only(topStart:Radius.circular(20.0) // to decorate a certain edge
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer, //to apply the decoration on the child of the stack
                child: Stack(
                  alignment: Alignment.bottomCenter, //to align the text
                  children: [
                    Image(
                      image: NetworkImage(
                        "link"
                      ),
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      // padding: EdgeInsets.zero, Default
                      // padding: EdgeInsets.only(), gives left and right and we want start and end
                      // padding: EdgeInsets.symmetric() vertical and horizontal
                      padding: EdgeInsetsDirectional.only(
                        // start:
                        // end:
                        top: 10.0,
                        bottom: 10.0,
                      ),
                      width: double.infinity, //width of the container which is the same as the image width
                      color: Colors.black.withOpacity(0.7), // color of the container
                      child: Text(
                          "flower",
                        textAlign: TextAlign.center, //to center the text in the container
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }

  /*void onNotification()
  {
    print('some shit');
  } */

}
