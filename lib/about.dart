import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'button.dart';
import 'color.dart';
import 'main.dart';

class AboutSubPage1 extends StatefulWidget {
  const AboutSubPage1({super.key});

  @override
  State<AboutSubPage1> createState() => _AboutSubPage1State();
}
class _AboutSubPage1State extends State<AboutSubPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColour,
        body: Padding(
            padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                    ),

                    SizedBox(
                      width: min(MediaQuery.of(context).size.width*0.8, 330),
                      child:
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => {
                              context.go('/about')
                            },
                            child: Container(
                              width: 20,
                              height: 20,
                              color: Colors.transparent,
                              child: SvgPicture.asset(
                                "assets/vectors/LeftArrow.svg",
                                color: Colors.black,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "학생회장 인사말",
                            style: TextStyle(
                              
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                    SizedBox(
                      width: 300,
                      child: Text(
                        """
북악제에 함께해 주신 모든 분들께 진심으로 환영과 감사의 인사를 드립니다.

북악제는 우리 경복고 학생들이 선생님, 그리고 지역 공동체와 마음을 모아 준비한 축제입니다.
서로의 재능을 나누고, 우정을 더욱 깊이하며, 우리의 독창성을 마음껏 표현하는 자리입니다.

정성껏 준비한 다양한 부스와 신나는 무대, 풍성한 공연과 먹거리들이 여러분을 기다리고 있습니다.

소중하고 빛나는 우리의 청춘, 이 순간을 즐길 자격은 여러분 모두에게 있습니다. 깊어가는 북악산의 붉은 단풍처럼 우리의 마음도, 우정도 한층 더 진하게 물들기를 바랍니다.

끝으로, 북악제를 위해 애써주신 모든 분들께 진심으로 깊은 감사를 드리며,
지금부터 2025년 북악제를 시작하겠습니다!

경복고등학교 제102대 학생회장
이정원 드림
""",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: buttonTextColour,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),

                    SizedBox(height: 35,),
                    LogoWidget()
                  ],
                ),
              ),
            )
        )
    );
  }
}


class AboutSubPage2 extends StatefulWidget {
  const AboutSubPage2({super.key});

  @override
  State<AboutSubPage2> createState() => _AboutSubPage2State();
}
class _AboutSubPage2State extends State<AboutSubPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColour,
        body: Padding(
            padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Center( child: SizedBox(
              width: 300,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 300,),

                      SizedBox(
                        height: 70,
                      ),

                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => {
                              context.go('/about')
                            },
                            child: Container(
                              width: 20,
                              height: 20,
                              color: Colors.transparent,
                              child: SvgPicture.asset(
                                "assets/vectors/LeftArrow.svg",
                                color: Colors.black,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "제 102대 학생회 소개",
                            style: TextStyle(
                              
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),

                      SvgPicture.asset("assets/vectors/Frame 9.svg", width: 330,),

                      SizedBox(height: 35,),
                      LogoWidget()
                    ],
                  ),
                ),
              ),
            ),
        )
    );
  }
}

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColour,
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 300,),

              SizedBox(
                height: 70,
              ),

              SizedBox(width: 300,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => {
                        context.go('/home')
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        color: Colors.transparent,
                        child: SvgPicture.asset(
                          "assets/vectors/LeftArrow.svg",
                          color: Colors.black,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      "처음으로",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),),
              SizedBox(height: 50,),
              Column(
                children: [
                  ButtonWidget(buttonTitle: "학생회장 인사말", pageIndex: 11),
                  ButtonWidget(buttonTitle: "제 102대 학생회 소개", pageIndex: 12,),
                ],
              ),
              Spacer(),
              LogoWidget()
            ],
          ),
        )
      )
    );
  }
}
