# sip_n_pee

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Container(
color: Colors.cyan, // the color of the whole column, column has no color attribute
width: double.infinity, //to make the width of the column to the whole screen;
child: Column(    // SafeArea(child: Text('shit'),), in case there was no app bar
mainAxisSize: MainAxisSize.max, //this is to make the column length to the whole screen length
mainAxisAlignment: MainAxisAlignment.center, //the alignment vertically, default is start
crossAxisAlignment: CrossAxisAlignment.center , // the alignment horizontally, default is center
children:  [
// 2 + 1 + 1 + 1 = 5 flex;
Expanded(
flex: 2, // flex is the share of the expand of the screen, default is 1;
child: Container(
height: 100.0,
color: Colors.amberAccent,
child: Text(
'First line',
style: TextStyle(
color: Colors.black,
fontSize: 30.0,
backgroundColor: Colors.white,
),
),
),
),
Expanded(
child: Container(
child: Text(
'Second line',
style: TextStyle(
color: Colors.black,
fontSize: 30.0,
backgroundColor: Colors.white,
),

                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Text(
                  'third',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Text(
                  'Fourth',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  backgroundColor: Colors.white,
                ),
                ),
              ),
            ),
          ],
        ),
      ),






Container(
color: Colors.cyan,
height: double.infinity,
child: Row(
//mainAxisAlignment: , // default is start
// mainAxisSize: MainAxisSize.max , //default
//crossAxisAlignment: , //default is centre
children: [
Container(
color: Colors.red,
child: Text(
'Karim',
style: TextStyle(
fontSize: 30.0,
color: Colors.white,
backgroundColor: Colors.black,
),
),
),
Container(
color: Colors.cyan,
child: Text(
'Karim',
style: TextStyle(
fontSize: 30.0,
color: Colors.white,
backgroundColor: Colors.black,
),
),
),
],
),
),




SingleChildScrollView(
scrollDirection: Axis.horizontal,
child: Row(
children:
[
Text(
'shit1',
style: TextStyle(
fontSize: 30.0,
),
),
Text(
'shit2',
style: TextStyle(
fontSize: 30.0,
),
),
]
),
),


// instead of the listView
SingleChildScrollView(
scrollDirection: Axis.horizontal,
child: Row(
children: [
Container(
width: 60.0,
child: Column(
children: [
Stack(
alignment: AlignmentDirectional.bottomEnd,
children: [
CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://i1.sndcdn.com/avatars-000063619199-y7w8es-t500x500.jpg'),

                            ),
                            // CircleAvatar(
                             // radius: 8.0,
                              // backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3.0,
                                end: 3.0,
                              ),
                              child: CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Abdullah Mohamed Monir',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ), //story name
                      ],
                    ),
                  ), // one story container
                  SizedBox(
                    width: 15.0,
                  ),  // story separator

                ],
              ), // one story row
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.0,
                    ), //separator between the stories section and the rest
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://i1.sndcdn.com/avatars-000063619199-y7w8es-t500x500.jpg'),

                            ),
                            // CircleAvatar(
                            // radius: 8.0,
                            // backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3.0,
                                end: 3.0,
                              ),
                              child: CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdulaah Monir',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                        'Hello! Holy shit!!!! shit has gotten real maaaaaaaaaaaaaaaaaan',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                    ),
                                    child: Container(
                                      width: 5.0,
                                      height: 5.0,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02:00 pm'
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                      ],
                    ), // A row of a Chat
                    SizedBox(
                      height: 10.0,
                    ), // between chats separator

                  ],
                ),
              ),
            ),