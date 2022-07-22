import 'package:flutter/material.dart';
import 'package:free_music/common/utils/utils.dart';
import 'package:free_music/common/widgets/widgets.dart';

import '../../common/values/values.dart';

class LoginErrorPage extends StatefulWidget {
  const LoginErrorPage({Key? key}) : super(key: key);

  @override
  State<LoginErrorPage> createState() => _LoginErrorPageState();
}

class _LoginErrorPageState extends State<LoginErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Playband',
        ),
        centerTitle: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.secondBackground,
                AppColors.primaryBackground,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        titleTextStyle: const TextStyle(
          color: AppColors.primaryElement,
          fontSize: 18,
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.menu),
            color: AppColors.primaryElement,
            tooltip: 'menu',
            padding: EdgeInsets.only(
              right: duSetWidth(32),
            ),
          )
        ],
      ),
      backgroundColor: AppColors.primaryBackground,
      body: Column(
        children: <Widget>[
          const Spacer(flex: 3),
          Center(
            child: Image.asset(
              'assets/images/logo@3x.png',
              width: duSetWidth(201),
              height: duSetHeight(174),
            ),
          ),
          const Spacer(flex: 1),
          noteDialog(
            content: 'Check your mail and confirm your registration.',
          ),
          const Spacer(flex: 1),
          customOutlineButton(
            width: 180,
            buttonText: 'login',
            onPressed: () => Navigator.pushNamed(context, '/sign-in'),
          ),
          const Spacer(flex: 6),
        ],
      ),
    );
  }
}
