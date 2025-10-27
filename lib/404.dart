

import 'package:bukak_festival/button.dart';
import 'package:flutter/material.dart';

import 'color.dart';

class PageNotFoundPage extends StatefulWidget {
  const PageNotFoundPage({super.key});

  @override
  State<PageNotFoundPage> createState() => _PageNotFoundPageState();
}

class _PageNotFoundPageState extends State<PageNotFoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColour,
        body: Padding(
          padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "404",
                  style: TextStyle(
                    color: mainColour,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "존재하지 않는 페이지 또는 미개발된 페이지입니다.",
                  style: TextStyle(
                    color: buttonTextColour,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                ButtonWidget(buttonTitle: "홈으로 돌아가기", pageIndex: 0)
              ],
            )
          )
        )
    );
  }
}
