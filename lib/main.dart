import 'package:flutter/material.dart';
import 'package:yt_clone/Contents/ContentItems.dart';
import 'Appbar.dart';

import 'Cateogories/categoryRow.dart';

import 'SideMenu/sideMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181818),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 300, top: 0),
            child: Container(
              width: MediaQuery.of(context).size.width -
                  MediaQuery.of(context).padding.left,
              child: Padding(
                padding: EdgeInsets.only(top: 150),
                child: GridView.count(
                  crossAxisCount: 4,
                  children: [
                    Items(
                      chnnelName: 'Beebom',
                      countViews: 10000,
                      uploaded: '1 Week ago',
                      videoName: 'Title of the video ...',
                    ),
                    Items(
                      chnnelName: 'Beebom',
                      countViews: 15400,
                      uploaded: '4 Week ago',
                      videoName: 'Title of the video ...',
                    ),
                    Items(
                      chnnelName: 'Beebom',
                      countViews: 864153,
                      uploaded: '1 Week ago',
                      videoName: 'Title of the video ...',
                    ),
                    Items(
                      chnnelName: 'Beebom',
                      countViews: 654789,
                      uploaded: '2 months ago',
                      videoName: 'Title of the video ...',
                    ),
                    Items(
                      chnnelName: 'Beebom',
                      countViews: 35417,
                      uploaded: '1 year ago',
                      videoName: 'Title of the video ...',
                    ),
                    Items(
                      chnnelName: 'Beebom',
                      countViews: 5247,
                      uploaded: '5 days ago',
                      videoName: 'Title of the video ...',
                    ),
                    Items(
                      chnnelName: 'Beebom',
                      countViews: 8741,
                      uploaded: '1 day ago',
                      videoName: 'Title of the video ...',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              NavBar(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SideMenu(),
                  CatPanel(),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
