import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:telegram_app/drawwer.dart';
import 'custom_color.dart';
import 'font_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            SizedBox(height: 20),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                CircleAvatar(
                  child: Image.asset("assets/images/image08.png"),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.people_alt),
                          SizedBox(width: 5),
                          Text(
                            "Press Room",
                            style: headerText,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Ashley : ",
                            style: nametext,
                          ),
                          Text(
                            "Wow, Nice mention!",
                            style: massageText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "5.54 PM",
                      style: massageText,
                    ),
                    Image.asset(
                      "assets/images/image09.png",
                      width: 15,
                      height: 15,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                CircleAvatar(
                  child: Image.asset("assets/images/image01.png"),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ghea", style: headerText),
                      Text("Photos", style: nametext),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/viewMassage.png",
                      width: 20,
                      height: 20,
                    ),
                    Text(
                      "1:37 PM",
                      style: massageText,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                CircleAvatar(
                  child: Image.asset("assets/images/image02.png"),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Celline", style: headerText),
                      Text("What", style: massageText),
                    ],
                  ),
                ),
                Text(
                  "1:13 PM",
                  style: massageText,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                CircleAvatar(
                  child: Image.asset("assets/images/image04.png"),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.lock),
                          SizedBox(width: 5),
                          Text("Paul Dogger", style: greenText),
                        ],
                      ),
                      Text("You have my financial Support", style: massageText),
                    ],
                  ),
                ),
                Text(
                  "Tue",
                  style: massageText,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                CircleAvatar(
                  child: Image.asset("assets/images/image05.png"),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ben Rodrigues", style: headerText),
                      Text("Update ? update my shiny mea ...",
                          style: massageText),
                    ],
                  ),
                ),
                Text(
                  "Tue",
                  style: massageText,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                CircleAvatar(
                  child: Image.asset("assets/images/factory.png"),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.people_alt),
                          SizedBox(width: 5),
                          Text(
                            "Factory",
                            style: headerText,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Winston : ",
                            style: nametext,
                          ),
                          Text(
                            "Lets, Desain More Robots",
                            style: massageText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  "Mon",
                  style: massageText,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                CircleAvatar(
                  child: Image.asset("assets/images/image03.png"),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Angel", style: headerText),
                      Text("Document", style: nametext),
                    ],
                  ),
                ),
                Text(
                  "Sat",
                  style: massageText,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
