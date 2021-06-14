import 'package:flutter/material.dart';

import 'CategoryItems.dart';

class CatPanel extends StatefulWidget {
  @override
  _CatPanelState createState() => _CatPanelState();
}

class _CatPanelState extends State<CatPanel> {
  int _selectedIndex = 0;

  void selectButton(int btn) {
    setState(() {
      _selectedIndex = btn;
    });
  }

  @override
  Widget build(BuildContext context) {
    var customeDivider = Container(
      height: 1,
      width: MediaQuery.of(context).size.width * 0.875,
      color: Colors.grey[800],
    );

    return Column(
      children: [
        customeDivider,
        Container(
          width: MediaQuery.of(context).size.width * 0.88,
          height: 56,
          color: Color.fromRGBO(32, 32, 32, 0.5),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CatItems(
                  title: 'All',
                  onPress: () {
                    selectButton(0);
                  },
                  selectedButton: 0,
                  selectedIndex: _selectedIndex,
                ),
                CatItems(
                  title: 'Live',
                  onPress: () {
                    selectButton(2);
                  },
                  selectedButton: 2,
                  selectedIndex: _selectedIndex,
                ),
                CatItems(
                  title: 'Music',
                  onPress: () {
                    selectButton(3);
                  },
                  selectedButton: 3,
                  selectedIndex: _selectedIndex,
                ),
                CatItems(
                  title: 'Mixes',
                  onPress: () {
                    selectButton(4);
                  },
                  selectedButton: 4,
                  selectedIndex: _selectedIndex,
                ),
                CatItems(
                  title: 'Counter-Strike:Global Offensive',
                  onPress: () {
                    selectButton(5);
                  },
                  selectedButton: 5,
                  selectedIndex: _selectedIndex,
                ),
                CatItems(
                  title: 'Flutter',
                  onPress: () {
                    selectButton(6);
                  },
                  selectedButton: 6,
                  selectedIndex: _selectedIndex,
                ),
                CatItems(
                  title: 'Apple MacBook Pro',
                  onPress: () {
                    selectButton(7);
                  },
                  selectedButton: 7,
                  selectedIndex: _selectedIndex,
                ),
                CatItems(
                  title: 'Computer Application',
                  onPress: () {
                    selectButton(8);
                  },
                  selectedButton: 8,
                  selectedIndex: _selectedIndex,
                ),
                CatItems(
                  title: 'Computer Science',
                  onPress: () {
                    selectButton(9);
                  },
                  selectedButton: 9,
                  selectedIndex: _selectedIndex,
                ),
                CatItems(
                  title: 'Gadgets',
                  onPress: () {
                    selectButton(10);
                  },
                  selectedButton: 10,
                  selectedIndex: _selectedIndex,
                ),
                CatItems(
                  title: 'Linux',
                  onPress: () {
                    selectButton(11);
                  },
                  selectedButton: 11,
                  selectedIndex: _selectedIndex,
                ),
                CatItems(
                  title: 'Games',
                  onPress: () {
                    selectButton(12);
                  },
                  selectedButton: 12,
                  selectedIndex: _selectedIndex,
                ),
                CatItems(
                  title: 'Stock Market',
                  onPress: () {
                    selectButton(13);
                  },
                  selectedButton: 13,
                  selectedIndex: _selectedIndex,
                ),
                CatItems(
                  title: 'Recently Uploaded',
                  onPress: () {
                    selectButton(14);
                  },
                  selectedButton: 14,
                  selectedIndex: _selectedIndex,
                ),
                CatItems(
                  title: 'Watched',
                  onPress: () {
                    selectButton(15);
                  },
                  selectedButton: 15,
                  selectedIndex: _selectedIndex,
                ),
              ],
            ),
          ),
        ),
        customeDivider,
      ],
    );
  }
}
