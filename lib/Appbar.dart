import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      color: Color.fromRGBO(32, 32, 32, 0.5),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20),
                Image.asset(
                  'assets/images/ytLogo.png',
                  width: 100,
                  height: 56,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 500,
                  height: 30,
                  child: TextField(
                    style: TextStyle(color: Colors.white70),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xff121212),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff575757)),
                          borderRadius: BorderRadius.circular(0)),
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(left: 15, bottom: 11, right: 15),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Color(0xff575757)),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 70,
                    height: 30,
                    alignment: Alignment.center,
                    color: Color(0xff323232),
                    child: Icon(
                      Icons.search,
                      color: Colors.white54,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(32),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(32),
                    radius: 32,
                    onTap: () {},
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32)),
                        child: Icon(Icons.mic, color: Colors.white)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    MdiIcons.dotsGrid,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 120,
                  height: 40,
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
          ],
        ),
      ),
    );
  }
}
