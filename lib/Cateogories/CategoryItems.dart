import 'package:flutter/material.dart';

class CatItems extends StatelessWidget {
  final String title;
  final int selectedButton;
  final int selectedIndex;
  final Function() onPress;

  CatItems(
      {required this.title,
      required this.selectedButton,
      required this.selectedIndex,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Row(
        children: [
          ButtonTheme(
            minWidth: 50,
            child: RaisedButton(
              color: selectedButton == selectedIndex
                  ? Colors.white
                  : Color(0xff373737),
              hoverColor: Colors.grey[800],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
              onPressed: onPress,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  title,
                  style: TextStyle(
                      color: selectedButton == selectedIndex
                          ? Colors.black
                          : Colors.white70),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
