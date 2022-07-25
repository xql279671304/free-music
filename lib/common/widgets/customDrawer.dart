import 'package:flutter/material.dart';
import 'package:free_music/common/utils/utils.dart';
import 'package:free_music/common/values/values.dart';

Widget _buildListItem(
  BuildContext context,
  String title,
  String route,
) {
  return ListTile(
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.primaryBackground,
        fontSize: duSetFontSize(16),
      ),
    ),
    onTap: () {
      Navigator.pushNamed(context, route);
    },
  );
}

Widget customDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: AppColors.secondElement,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        Container(
          height: duSetHeight(314),
          padding: EdgeInsets.symmetric(
            horizontal: duSetWidth(30),
          ),
          decoration: const BoxDecoration(
            color: AppColors.primaryElement,
          ),
          child: DrawerHeader(
            padding: EdgeInsets.zero,
            child: Column(
              children: <Widget>[
                SizedBox(
                    height: duSetHeight(70),
                    width: duSetWidth(252),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.menu,
                          color: AppColors.primaryBackground,
                        ),
                      ],
                    )),
                const SizedBox(
                  width: 100,
                  height: 100,
                  child: Image(
                    image: AssetImage('assets/images/profile.png'),
                  ),
                ),
                Text(
                  'Adam Collester',
                  style: TextStyle(
                    color: AppColors.primaryBackground,
                    fontSize: duSetFontSize(16),
                    height: 2,
                  ),
                ),
                Text(
                  'Online',
                  style: TextStyle(
                    color: AppColors.secondText,
                    fontSize: duSetFontSize(12),
                    height: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: duSetHeight(60),
            bottom: duSetHeight(80),
          ),
          child: Column(
            children: <Widget>[
              _buildListItem(context, 'Profile', '/sign-in'),
              _buildListItem(context, 'Albums', '/sign-in'),
              _buildListItem(context, 'Tracks', '/sign-in'),
              _buildListItem(context, 'Settings', '/sign-in'),
            ],
          ),
        ),
        GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                width: 16,
                height: 20,
                image: AssetImage('assets/images/log_out.png'),
                alignment: Alignment.bottomLeft,
              ),
              Text(
                'Logout',
                style: TextStyle(
                  color: AppColors.primaryBackground,
                  fontSize: duSetFontSize(14),
                ),
              )
            ],
          ),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ],
    ),
  );
}
