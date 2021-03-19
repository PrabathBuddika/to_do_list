import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String discription;

  TaskCardWidget({this.title, this.discription});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        // container eka mulu screen ekama ganna me keyword eka use karanawa.

        padding: EdgeInsets.symmetric(
          vertical: 32.0,
          horizontal: 24.0,
        ),
        margin: EdgeInsets.only(
          bottom: 20.0,
        ),
        decoration: BoxDecoration(
          // text design hadanne meken
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          //edgs shape karanna meka use karanawa
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // allways starts left to rigth.

          children: [
            Text(
              title ?? "(Unnamed Task)",
              style: TextStyle(
                  color: Colors.yellow[800],
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                discription ?? "No Discription Added.",
                style: TextStyle(
                  color: Colors.blue[400],
                  fontSize: 18.0,
                  height: 1.5,
                ),
              ),
            )
          ],
        ));
  }
}

class Todowidget extends StatelessWidget {
  final String text;
  final bool isDone;

  Todowidget({this.text, @required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 20,
      ),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            margin: EdgeInsets.only(right: 15.0),
            decoration: BoxDecoration(
              color: isDone ? Color(0xFF7349FE) : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: isDone
                  ? null
                  : Border.all(
                      color: Colors.black,
                      width: 1.5,
                    ),
            ),
            child: Image(
              image: AssetImage(
                'assets/images/check_icon.png',
              ),
            ),
          ),
          Text(
            text ?? "(Unnamed Todo)",
            style: TextStyle(
              color: isDone ? Color(0xFF211551) : Color(0xFF868290),
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
