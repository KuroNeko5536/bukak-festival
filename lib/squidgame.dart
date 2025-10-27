
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'color.dart';
import 'main.dart';

class SquidGamePage extends StatefulWidget {
  const SquidGamePage({super.key});

  @override
  State<SquidGamePage> createState() => _SquidGamePageState();
}
class _SquidGamePageState extends State<SquidGamePage> {
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
                          "학급 대항 오징어게임 ( 1부 )",
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
                      SvgPicture.asset("assets/vectors/Frame 40.svg", width: min(MediaQuery.of(context).size.width*0.8, 300), fit: BoxFit.fitHeight,),
                      Spacer(),
                    ],
                  ),

                  SizedBox(height: 35,),

                  LogoWidget()
                ],
              ),
            ),
          )
      ),
    );
  }
}