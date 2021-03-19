import 'package:flutter/material.dart';
import 'package:to_do_list/screens/widgets.dart';

class Taskpage extends StatefulWidget {
  @override
  _TaskpageState createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      //kalin page ekata yanna.
                      //inkwell ekakata warp karama button eka press karama click wenawa wage penawa.
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 25.0,
                        bottom: 6.0,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30),
                            child: Image(
                              image: AssetImage(
                                  "assets/images/back_arrow_icon.png"),
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Enter Task Title...",
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow[800]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Description for the Task... ",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 25)),
                    ),
                  ),
                  Todowidget(
                    text: "Crate your first task",
                    isDone: true,
                  ),
                  Todowidget(
                    text: "Create your First Task well",
                    isDone: true,
                  ),
                  Todowidget(
                    isDone: false,
                  ),
                  Todowidget(
                    isDone: false,
                  ),
                ],
              ),
              Positioned(
                bottom: 25.0,
                right: 25.0,
                //this use to place bottem,rigth coner

                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Taskpage(),
                      ),
                    );
                  },
                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.red[600],
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Image(
                      image: AssetImage("assets/images/delete_icon.png"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
