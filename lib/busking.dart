
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'button.dart';
import 'color.dart';
import 'main.dart';

class BuskingPage extends StatefulWidget {
  const BuskingPage({super.key});

  @override
  State<BuskingPage> createState() => _BuskingPageState();
}
class _BuskingPageState extends State<BuskingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColour,
        body: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    SizedBox(
                      height: 70,
                    ),

                    SizedBox(
                      width: min(MediaQuery.of(context).size.width*0.8, 330),
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
                            "버스킹 안내 ( 3부 )",
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

                    Row(
                      children: [
                        Spacer(),
                        SvgPicture.asset("assets/vectors/Frame 20.svg", width: min(MediaQuery.of(context).size.width*0.6, 250),),
                        SizedBox(width: 50,),
                        Spacer(),
                      ],
                    ),

                    SizedBox(height: 35,),
                    ButtonWidget(buttonTitle: "참가자 자세히 보기", pageIndex: 14,),
                    SizedBox(height: 70,),
                    LogoWidget()
                  ],
                ),
              ),
            )
        ),
    );
  }
}