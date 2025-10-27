import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'button.dart';
import 'color.dart';
import 'main.dart';

class FullScreenImage extends StatelessWidget {
  const FullScreenImage({super.key, required this.asset, required this.tag});

  final String asset;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Scaffold(
        backgroundColor: Colors.black26,
        body: Center(
          child: Hero(
            tag: tag,
            child: InteractiveViewer(
              clipBehavior: Clip.none, // Hero 전환 시 잘리지 않도록
              panEnabled: true, // 드래그 이동 가능
              minScale: 1.0, // 최소 축소 비율
              maxScale: 4.0, // 최대 확대 비율
              child: Image.asset(
                asset,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class BoothSubPage1 extends StatefulWidget {
  const BoothSubPage1({super.key});

  @override
  State<BoothSubPage1> createState() => _BoothSubPage1State();
}
class _BoothSubPage1State extends State<BoothSubPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColour,
        body: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: double.infinity,),

                  SizedBox(
                    height: 70,
                  ),

                  SizedBox(
                    width: min(MediaQuery.of(context).size.width*0.8, 330),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => {
                            context.go('/booth')
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
                          "부스 배치도",
                          style: TextStyle(

                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 35,),

                  SizedBox(
                    width: min(MediaQuery.of(context).size.width*0.8, 330),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "전체 배치도",
                          style: TextStyle(

                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const FullScreenImage(
                          asset: "assets/images/map1.png",
                          tag: "map1",
                        )),
                      );
                    },
                    child: Hero(
                      tag: 'map2',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset("assets/images/map1.png",
                          width: min(MediaQuery.of(context).size.width*0.9, 330),),
                      ),
                    ),
                  ),

                  SizedBox(height: 40,),

                  SizedBox(
                    width: min(MediaQuery.of(context).size.width*0.8, 330),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "부스 배치도 ( 운동장 )",
                          style: TextStyle(

                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const FullScreenImage(
                          asset: "assets/images/map2.png",
                          tag: "map2",
                        )),
                      );
                    },
                    child: Hero(
                      tag: 'map2',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset("assets/images/map2.png", width: min(MediaQuery.of(context).size.width*0.9, 330),),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),

                  SizedBox(
                    width: min(MediaQuery.of(context).size.width*0.8, 330),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "부스 배치도 ( 정문 )",
                          style: TextStyle(

                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const FullScreenImage(
                          asset: "assets/images/map3.png",
                          tag: "map3",
                        )),
                      );
                    },
                    child: Hero(
                      tag: 'map3',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset("assets/images/map3.png", width: min(MediaQuery.of(context).size.width*0.9, 330),),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),

                  SizedBox(
                    width: min(MediaQuery.of(context).size.width*0.8, 330),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "부스 배치도 ( 꾀꼬리 동산 )",
                          style: TextStyle(

                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const FullScreenImage(
                          asset: "assets/images/map4.png",
                          tag: "map4",
                        )),
                      );
                    },
                    child: Hero(
                      tag: 'map4',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset("assets/images/map4.png", width: min(MediaQuery.of(context).size.width*0.9, 330),),
                      ),
                    ),
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

class BoothSubPage2 extends StatefulWidget {
  const BoothSubPage2({super.key});

  @override
  State<BoothSubPage2> createState() => _BoothSubPage2State();
}
class _BoothSubPage2State extends State<BoothSubPage2> {

  List<dynamic> booths = [];
  List<dynamic> subBooths = [];

  @override
  void initState() {
    super.initState();
    loadBooths();
    loadSubBooths();
  }

  Future<void> loadBooths() async {
    final String jsonString = await rootBundle.loadString('assets/booths.json');
    final List<dynamic> jsonData = json.decode(jsonString);

    setState(() {
      booths = jsonData;
    });
  }

  Future<void> loadSubBooths() async {
    final String jsonString = await rootBundle.loadString('assets/subBooths.json');
    final List<dynamic> jsonData = json.decode(jsonString);

    setState(() {
      subBooths = jsonData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColour,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: double.infinity,),

                SizedBox(
                  height: 70,
                ),

                SizedBox(
                  width: min(MediaQuery.of(context).size.width*0.8, 330),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => {
                          context.go('/booth')
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
                        "부스별 활동 안내",
                        style: TextStyle(

                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 35,),

                // SvgPicture.asset("assets/vectors/Frame 21.svg", width: min(MediaQuery.of(context).size.width * 0.9, 400), fit: BoxFit.fitHeight,),

                SizedBox(
                  width: min(MediaQuery.of(context).size.width*0.8, 330),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "기타 부스",
                        style: TextStyle(

                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black26,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: subBooths.length,
                  itemBuilder: (context, index) {
                    final booth = subBooths[index];
                    return BoothCardWidget(
                      index: booth['index'],
                      title: booth['title'],
                      subTitle: booth['subTitle'],
                      description: booth['description'],
                      tag: booth['tag'],
                      deviceFactor: MediaQuery.of(context).size.width * 0.002,
                    );
                  },
                ),

                SizedBox(height: 30,),

                SizedBox(
                  width: min(MediaQuery.of(context).size.width*0.8, 330),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "동아리 부스",
                        style: TextStyle(

                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black26,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: booths.length,
                  itemBuilder: (context, index) {
                    final booth = booths[index];
                    return BoothCardWidget(
                      index: booth['index'],
                      title: booth['title'],
                      subTitle: booth['subTitle'],
                      description: booth['description'],
                      tag: booth['tag'],
                      deviceFactor: MediaQuery.of(context).size.width * 0.002,
                    );
                  },
                ),

                SizedBox(height: 35,),

                LogoWidget()
              ],
            ),
          ),
        )
    );
  }
}


class BoothCardWidget extends StatelessWidget {
  const BoothCardWidget({super.key, required this.index, required this.title, required this.subTitle, required this.description, required this.tag, required this.deviceFactor});

  final int index;
  final String title;
  final String subTitle;
  final String description;
  final String tag;

  final double deviceFactor;

  @override
  Widget build(BuildContext context) {
    double containerFactor = min(deviceFactor*1.3, 1);
    double textFactor = min(deviceFactor, 1);
    return Column(
      children: [
        SizedBox(
            width: 360*containerFactor,
            child: Column(
              children: [
                tag.isNotEmpty ? Row(
                  children: [
                    SizedBox(width: 65,),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      height: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                        color: Color(0xff2C91F8),
                      ),
                      child: Center(
                        child: Text(
                          tag,
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                          ),
                        ),
                      ),
                    )
                  ],
                ) : SizedBox(),
                Container(
                  width: 360*containerFactor,
                  decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      index != 0 ? Text(
                        index.toString(),
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 20*textFactor,
                          fontWeight: FontWeight.w600,
                        ),
                      ) : SizedBox(),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(15),
                        width: 310*containerFactor,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  title,
                                  style: TextStyle(
                                    color: Color(0xff2C91F8),
                                    fontSize: 20*textFactor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    SizedBox(height: 6,),
                                    Text(
                                      subTitle,
                                      style: TextStyle(
                                        color: Color(0xff2C91F8),
                                        fontSize: 15*textFactor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text(
                              description,
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 15*textFactor,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
        ),
        SizedBox(height: 15,),
      ],
    );
  }
}


class BoothPage extends StatefulWidget {
  const BoothPage({super.key});

  @override
  State<BoothPage> createState() => _BoothPageState();
}

class _BoothPageState extends State<BoothPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColour,
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity,),

            SizedBox(
              height: 70,
            ),

            SizedBox(
              width: 250,
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
                      
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Column(
              children: [
                ButtonWidget(buttonTitle: "부스 배치도", pageIndex: 41,),
                ButtonWidget(buttonTitle: "부스별 활동 안내", pageIndex: 42,),
              ],
            ),
            Spacer(),
            Column(
              children: [
                SvgPicture.asset("assets/vectors/SchoolLogo.svg"),
                SizedBox(height: 10,),
                Text(
                  "KYUNGBOCK HIGH SCHOOL",
                  style: TextStyle(
                    color: mainColour,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 35,),
          ],
        )
      )
    );
  }
}
