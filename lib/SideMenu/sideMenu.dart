import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'Buttons.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int _selectedIndex = 0;

  void selectButton(int btn) {
    setState(() {
      _selectedIndex = btn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.12,
      height: MediaQuery.of(context).size.height * 0.935,
      child: Material(
        color: Color.fromRGBO(33, 33, 33, 1),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Button(
                title: 'Home',
                icon: Icons.home,
                selectedButton: 0,
                selectedIndex: _selectedIndex,
                onPress: () {
                  selectButton(0);
                },
              ),
              Button(
                title: 'Explore',
                icon: Icons.explore,
                selectedButton: 2,
                selectedIndex: _selectedIndex,
                onPress: () {
                  selectButton(2);
                },
              ),
              Button(
                title: 'Subscription',
                icon: Icons.subscript,
                selectedButton: 3,
                selectedIndex: _selectedIndex,
                onPress: () {
                  selectButton(3);
                },
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Divider(
                  color: Colors.white,
                  thickness: 0.1,
                ),
              ),
              Button(
                title: 'Library',
                icon: Icons.library_books,
                selectedButton: 4,
                selectedIndex: _selectedIndex,
                onPress: () {
                  selectButton(4);
                },
              ),
              Button(
                title: 'History',
                icon: Icons.history,
                selectedButton: 5,
                selectedIndex: _selectedIndex,
                onPress: () {
                  selectButton(5);
                },
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Divider(
                  color: Colors.white,
                  thickness: 0.1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign in to like videos,\ncomment and subscribe.',
                      style: TextStyle(color: Colors.white54),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: 120,
                      height: 35,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.blue)),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(MdiIcons.accountCircle, color: Colors.blue),
                            SizedBox(width: 15),
                            Text(
                              'SIGN IN',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, bottom: 8),
                child: Divider(
                  color: Colors.white,
                  thickness: 0.1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 8),
                child: Text(
                  'BEST OF YOUTUBES',
                  style: TextStyle(color: Colors.white38),
                ),
              ),
              Button(
                selectedButton: 6,
                onPress: () {
                  selectButton(6);
                },
                selectedIndex: _selectedIndex,
                icon: MdiIcons.musicCircle,
                title: 'Music',
              ),
              Button(
                selectedButton: 7,
                onPress: () {
                  selectButton(7);
                },
                selectedIndex: _selectedIndex,
                icon: MdiIcons.carSports,
                title: 'Sports',
              ),
              Button(
                selectedButton: 8,
                onPress: () {
                  selectButton(8);
                },
                selectedIndex: _selectedIndex,
                icon: MdiIcons.gamepadCircle,
                title: 'Gaming',
              ),
              Button(
                selectedButton: 9,
                onPress: () {
                  selectButton(9);
                },
                selectedIndex: _selectedIndex,
                icon: MdiIcons.movie,
                title: 'Films',
              ),
              Button(
                selectedButton: 10,
                onPress: () {
                  selectButton(10);
                },
                selectedIndex: _selectedIndex,
                icon: MdiIcons.newspaper,
                title: 'News',
              ),
              Button(
                selectedButton: 11,
                onPress: () {
                  selectButton(11);
                },
                selectedIndex: _selectedIndex,
                icon: Icons.live_tv,
                title: 'Live',
              ),
              Button(
                selectedButton: 12,
                onPress: () {
                  selectButton(12);
                },
                selectedIndex: _selectedIndex,
                icon: Icons.face,
                title: 'Fashion & Beauty',
              ),
              Button(
                selectedButton: 13,
                onPress: () {
                  selectButton(13);
                },
                selectedIndex: _selectedIndex,
                icon: MdiIcons.teach,
                title: 'Learning',
              ),
              Button(
                selectedButton: 14,
                onPress: () {
                  selectButton(14);
                },
                selectedIndex: _selectedIndex,
                icon: MdiIcons.spotlight,
                title: 'Spotlight',
              ),
              Button(
                selectedButton: 15,
                onPress: () {
                  selectButton(15);
                },
                selectedIndex: _selectedIndex,
                icon: MdiIcons.video3D,
                title: '360 Videos',
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, bottom: 8),
                child: Divider(
                  color: Colors.white,
                  thickness: 0.1,
                ),
              ),
              Button(
                selectedButton: 16,
                onPress: () {
                  selectButton(16);
                },
                selectedIndex: _selectedIndex,
                icon: Icons.add_circle_rounded,
                title: 'Browse channels',
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, bottom: 8),
                child: Divider(
                  color: Colors.white,
                  thickness: 0.1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 8),
                child: Text(
                  'MORE FROM YOUTUBE',
                  style: TextStyle(color: Colors.white38),
                ),
              ),
              Button(
                selectedButton: 17,
                onPress: () {
                  selectButton(17);
                },
                selectedIndex: _selectedIndex,
                icon: MdiIcons.youtube,
                title: 'YouTube Premium',
              ),
              Button(
                selectedButton: 18,
                onPress: () {
                  selectButton(18);
                },
                selectedIndex: _selectedIndex,
                icon: MdiIcons.radioTower,
                title: 'Live',
              ),
              Button(
                selectedButton: 19,
                onPress: () {
                  selectButton(19);
                },
                selectedIndex: _selectedIndex,
                icon: Icons.settings,
                title: 'Settings',
              ),
              Button(
                selectedButton: 20,
                onPress: () {
                  selectButton(20);
                },
                selectedIndex: _selectedIndex,
                icon: Icons.flag,
                title: 'Report HIstory',
              ),
              Button(
                selectedButton: 21,
                onPress: () {
                  selectButton(21);
                },
                selectedIndex: _selectedIndex,
                icon: Icons.help,
                title: 'Help',
              ),
              Button(
                selectedButton: 22,
                onPress: () {
                  selectButton(22);
                },
                selectedIndex: _selectedIndex,
                icon: Icons.feedback,
                title: 'Send Feedback',
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, bottom: 8),
                child: Divider(
                  color: Colors.white,
                  thickness: 0.1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 8, right: 15),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          'About Press Copyright Contact us Creator Advertise Developers',
                          style: TextStyle(fontSize: 13, color: Colors.white60),
                          overflow: TextOverflow.clip,
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Terms Privacy Policy & Safety How YouTube works Test new features',
                          style: TextStyle(fontSize: 13, color: Colors.white60),
                          overflow: TextOverflow.clip,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, bottom: 15),
                child: Text('© 2021 Google LLC',
                    style: TextStyle(color: Colors.white24, fontSize: 13)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
