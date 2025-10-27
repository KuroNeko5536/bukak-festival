import 'package:bukak_festival/basketball.dart';
import 'package:bukak_festival/performance.dart';
import 'package:bukak_festival/squidgame.dart';
import 'package:bukak_festival/time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '404.dart';
import 'about.dart';
import 'aboutDetail.dart';
import 'booth.dart';
import 'busking.dart';
import 'color.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      initialLocation: '/home',
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/about',
          builder: (context, state) => const AboutPage(),
        ),
        GoRoute(
          path: '/about/1',
          builder: (context, state) => const AboutSubPage1(),
        ),
        GoRoute(
          path: '/about/2',
          builder: (context, state) => const AboutSubPage2(),
        ),
        GoRoute(
          path: '/time',
          builder: (context, state) => const TimePage(),
        ),
        GoRoute(
          path: '/performance',
          builder: (context, state) => const PerformancePage(),
        ),
        GoRoute(
          path: '/booth',
          builder: (context, state) => const BoothPage(),
        ),
        GoRoute(
          path: '/booth/1',
          builder: (context, state) => const BoothSubPage1(),
        ),
        GoRoute(
          path: '/booth/2',
          builder: (context, state) => const BoothSubPage2(),
        ),
        GoRoute(
          path: '/busking',
          builder: (context, state) => const BuskingPage(),
        ),
        GoRoute(
          path: '/basketball',
          builder: (context, state) => const BasketballPage(),
        ),
        GoRoute(
          path: '/aboutdetail/1',
          builder: (context, state) => const AboutDetail(root: '/performance',)
        ),
        GoRoute(
            path: '/aboutdetail/2',
            builder: (context, state) => const AboutDetail(root: '/busking',)
        ),
        GoRoute(
            path: '/squidgame',
            builder: (context, state) => const SquidGamePage()
        )
      ],
      errorBuilder: (context, state) => const PageNotFoundPage(),
    );

    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'NotoSansKR',
      ),
      title: "북악제 모바일 리플렛",
      routerConfig: _router,
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SvgPicture.asset("assets/vectors/SchoolLogo.svg"),
            SizedBox(height: 10,),
            Text(
              "KYUNGBOCK HIGH SCHOOL",
              style: TextStyle(
                
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: mainColour,
              ),
            ),
          ],
        ),
        SizedBox(height: 35,),
      ],
    );
  }
}
