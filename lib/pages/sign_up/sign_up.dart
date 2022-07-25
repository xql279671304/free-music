import 'package:flutter/material.dart';
import 'package:free_music/common/utils/utils.dart';
import 'package:free_music/common/values/values.dart';
import 'package:free_music/common/widgets/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarReturn(
        context,
        title: 'Registration',
      ),
      backgroundColor: AppColors.primaryBackground,
      body: Column(
        children: <Widget>[
          const Spacer(
            flex: 2,
          ),
          inputTextField(hintText: 'Name'),
          inputTextField(hintText: 'E-mail'),
          inputTextField(hintText: 'Phone'),
          Padding(
            padding: EdgeInsets.symmetric(vertical: duSetHeight(10)),
          ),
          customOutlineButton(
            buttonText: 'create account',
            onPressed: () => Navigator.pushNamed(context, '/sign-in'),
          ),
          const Spacer(
            flex: 3,
          ),
          noteDialog(
            content: 'All fields are required. Enter valid information.',
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
