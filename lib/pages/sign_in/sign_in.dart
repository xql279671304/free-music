import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_music/common/utils/utils.dart';
import 'package:free_music/common/values/values.dart';
import 'package:free_music/common/widgets/widgets.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: duSetWidth(375),
            height: ScreenUtil().screenHeight * 0.57,
            decoration: const BoxDecoration(
              color: AppColors.primaryElement,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/sign_in_background.png'),
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: duSetHeight(32),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/images/icon_menu.png',
                      width: duSetWidth(22),
                      height: duSetHeight(17),
                    ),
                    SizedBox(
                      width: duSetWidth(38),
                    )
                  ],
                ),
                const Spacer(flex: 2),
                Image.asset(
                  'assets/images/logo_1@3x.png',
                  width: duSetWidth(109),
                  height: duSetHeight(100),
                ),
                const Spacer(flex: 2),
                Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: duSetFontSize(32),
                    color: AppColors.primaryBackground,
                  ),
                ),
                const Spacer(flex: 3),
              ],
            ),
          ),
          inputTextField(hintText: 'Name'),
          inputTextField(hintText: 'E-mail'),
          const Spacer(
            flex: 2,
          ),
          customOutlineButton(
            buttonText: 'login',
            width: 180,
            onPressed: () => Navigator.pushNamed(context, '/login-error'),
          ),
          const Spacer(
            flex: 2,
          ),
          const Text(
            'Forgot password?',
            style: TextStyle(
              color: AppColors.secondText,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
