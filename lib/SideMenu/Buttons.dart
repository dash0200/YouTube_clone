import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final int selectedButton;
  final int selectedIndex;
  final IconData icon;
  final String title;
  final Function()? onPress;

  Button(
      {required this.selectedButton,
      this.onPress,
      required this.selectedIndex,
      required this.icon,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Color(0xff383838),
      onTap: onPress,
      child: Container(
        color: selectedButton == selectedIndex
            ? Color(0xff383838)
            : Colors.transparent,
        alignment: Alignment.center,
        height: 50,
        child: Padding(
          padding: EdgeInsets.only(left: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: selectedButton == selectedIndex
                    ? Colors.white
                    : Color(0xff909090),
              ),
              SizedBox(width: 20),
              Text(
                title,
                style: TextStyle(
                    color: selectedButton == selectedIndex
                        ? Colors.white
                        : Color(0xff909090)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
