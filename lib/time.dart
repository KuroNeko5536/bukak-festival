
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'color.dart';
import 'main.dart';

class TimePage extends StatefulWidget {
  const TimePage({super.key});

  @override
  State<TimePage> createState() => _TimePageState();
}
class _TimePageState extends State<TimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColour,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SizedBox(
                      height: 70,
                    ),

                    SizedBox(width: min(MediaQuery.of(context).size.width*0.8, 330), child: Row(
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
                          "운영시간",
                          style: TextStyle(
                            
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),),
                    SizedBox(height: 50,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        SvgPicture.asset("assets/vectors/Frame 18.svg", width: min(MediaQuery.of(context).size.width*0.8, 330),),
                        Spacer(),
                      ],
                    ),

                    SizedBox(height: 35,),

                    LogoWidget()
                  ],
                )
            ),
          ),
        )
    );
  }
}