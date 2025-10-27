
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'color.dart';
import 'main.dart';

class BasketballPage extends StatefulWidget {
  const BasketballPage({super.key});

  @override
  State<BasketballPage> createState() => _BasketballPageState();
}
class _BasketballPageState extends State<BasketballPage> {
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
                          "농구부 올스타쇼",
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
                      SvgPicture.asset("assets/vectors/Frame 18 2.svg", width: min(MediaQuery.of(context).size.width*0.8, 300), fit: BoxFit.fitHeight,),
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