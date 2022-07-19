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
      appBar: AppBar(
        title: const Text('Registration'),
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
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.primaryElement,
          ),
        ),
        elevation: 0,
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
            onPressed: () => {},
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
