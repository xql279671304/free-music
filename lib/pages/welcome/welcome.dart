import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_music/common/utils/utils.dart';
import 'package:free_music/common/values/values.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  State<Welcome> createState() => _WelcomeState();
}

Widget _buildPageLogo() {
  return Padding(
    padding: EdgeInsets.all(duSetHeight(60)),
    child: Image.asset(
      "assets/images/logo_1.png",
      width: duSetWidth(109),
      height: duSetHeight(100.16),
    ),
  );
}

Widget _buildPageDetail() {
  return Container(
    margin: EdgeInsets.only(top: duSetHeight(20)),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(duSetHeight(40)),
          child: Column(
            children: [
              Text(
                "Free Music",
                style: TextStyle(
                  fontSize: duSetFontSize(32),
                  color: AppColors.primaryBackground,
                ),
              ),
              Text(
                "Application",
                style: TextStyle(
                  fontSize: duSetFontSize(32),
                  color: AppColors.primaryBackground,
                ),
              ),
            ],
          ),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: AppColors.primaryBackground,
            fixedSize: Size(duSetWidth(180), 50),
            shape: const StadiumBorder(),
            textStyle: TextStyle(
              fontSize: duSetFontSize(11),
            ),
          ),
          onPressed: () {},
          child: const Text(
            "GET STARTED",
            style: TextStyle(
              color: AppColors.secondText,
            ),
          ),
        ),
      ],
    ),
  );
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812 - 100));

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.primaryElement,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/welcome_background.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _buildPageLogo(),
              _buildPageDetail(),
            ],
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextButton(
              style: flatButtonStyle,
              onPressed: () {
                Navigator.pushNamed(context, "/sign-in");
              },
              child: const Text("Sign In"),
            ),
            SizedBox(
              width: duSetWidth(1),
              height: 100,
              child: const DecoratedBox(
                decoration: BoxDecoration(color: AppColors.splitLine),
              ),
            ),
            TextButton(
              style: flatButtonStyle,
              onPressed: () {
                Navigator.pushNamed(context, "/sign-up");
              },
              child: const Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: AppColors.primaryText,
  fixedSize: Size(duSetWidth(187), 100),
  backgroundColor: AppColors.primaryBackground,
  textStyle: TextStyle(
    fontSize: duSetFontSize(22),
  ),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.zero),
  ),
);
