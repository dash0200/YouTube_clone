import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  String videoName;
  int countViews;
  String chnnelName;
  String avatar;
  String uploaded;

  Items(
      {required this.chnnelName,
      required this.countViews,
      required this.uploaded,
      required this.videoName,
      this.avatar = 'assets/images/profilePic.png'});
  @override
  Widget build(BuildContext context) {
    String? units() {
      return countViews > 9999
          ? countViews.toString().substring(0, 2) + 'K'
          : countViews > 99999
              ? countViews.toString().substring(0, 3) + 'K'
              : countViews > 999999
                  ? countViews.toString().substring(0, 2) + 'M'
                  : countViews > 9999999
                      ? countViews.toString().substring(0, 2) + 'B'
                      : '';
    }

    return GestureDetector(
      onTap: () {
        print('Tapped');
      },
      child: Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 380,
                  color: Colors.amber,
                  height: 200,
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            avatar,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          videoName,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chnnelName,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            Text(
                              '${units()} views . $uploaded',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
