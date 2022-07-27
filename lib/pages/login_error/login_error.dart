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
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: customAppBar(
        _key,
        title: 'Playband',
      ),
      backgroundColor: AppColors.primaryBackground,
      endDrawer: customDrawer(context),
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
