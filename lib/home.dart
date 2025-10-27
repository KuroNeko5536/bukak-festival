import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'button.dart';
import 'color.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColour,
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: double.infinity,),
              SizedBox(height: 50,),
              SizedBox(
                width: 300,
                child:
                Image.asset("assets/images/home_title.png"),
              ),
              Column(
                children: [
                  SizedBox(height: 20,),
                  ButtonWidget(buttonTitle: "학생회장 인사말 및 학생회 소개", pageIndex: 1,),
                  ButtonWidget(buttonTitle: "운영 시간", pageIndex: 2,),
                  ButtonWidget(buttonTitle: "학급 대항 오징어게임(1부)", pageIndex: 7,),
                  ButtonWidget(buttonTitle: "공연 안내 ( 2부 )", pageIndex: 3,),
                  ButtonWidget(buttonTitle: "부스 안내 ( 3부 )", pageIndex: 4,),
                  ButtonWidget(buttonTitle: "운동장 버스킹 안내 ( 3부 )", pageIndex: 5,),
                  ButtonWidget(buttonTitle: "농구부 올스타쇼 안내 ( 4부 )", pageIndex: 6,),
                ],
              ),
              SizedBox(height: 35,),
              LogoWidget()
            ],
          ),
        )
      )
    );
  }
}
