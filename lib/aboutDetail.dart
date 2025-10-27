
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'color.dart';
import 'main.dart';

class AboutDetail extends StatefulWidget {
  const AboutDetail({super.key, required this.root});
  
  final String root;

  @override
  State<AboutDetail> createState() => _AboutDetailState();
}
class _AboutDetailState extends State<AboutDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColour,
      body: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                            context.go(widget.root)
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
                          "2부 공연 및 버스킹 참가자",
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
                      SvgPicture.asset("assets/vectors/Frame 38.svg", width: min(MediaQuery.of(context).size.width*0.8, 300),),
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