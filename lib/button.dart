import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'color.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key, required this.buttonTitle, required this.pageIndex});

  final String buttonTitle;
  final int pageIndex;

  @override
  State<ButtonWidget> createState() => _ButtonState();
}

class _ButtonState extends State<ButtonWidget> {

  Map<int, String> pageList = {
    0: "home",
    1: "about",
    11: "about/1",
    12: "about/2",
    13: "aboutdetail/1",
    14: "aboutdetail/2",
    2: "time",
    3: "performance",
    4: "booth",
    41: "booth/1",
    42: "booth/2",
    5: "busking",
    6: "basketball",
    7: "squidgame",
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15,),
        GestureDetector(
          onTap: () => {
            print(widget.pageIndex),
            context.go('/${pageList[widget.pageIndex]}')
          },
          child: Container(
            width: 300,
            height: 45,
            decoration: BoxDecoration(
                color: buttonColour,
                borderRadius: BorderRadius.all(Radius.circular(300)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withAlpha(10),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 4)
                  )
                ]
            ),
            child: Center(
              child: Text(
                widget.buttonTitle,
                style: TextStyle(
                    color: buttonTextColour
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}