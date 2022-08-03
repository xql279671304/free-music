// ignore: file_names
import 'package:flutter/material.dart';
import 'package:free_music/common/utils/utils.dart';
import 'package:free_music/common/values/values.dart';

Widget _buildFlexibleSpace({
  Color? beginColor,
  Color? endColor,
}) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          beginColor ?? AppColors.secondBackground,
          endColor ?? AppColors.primaryBackground,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
  );
}

PreferredSizeWidget customAppBar(
  GlobalKey<ScaffoldState> _key, {
  String title = '',
}) {
  return AppBar(
    title: Text(
      title,
    ),
    centerTitle: false,
    flexibleSpace: _buildFlexibleSpace(),
    titleTextStyle: const TextStyle(
      color: AppColors.primaryElement,
      fontSize: 18,
    ),
    elevation: 0,
    automaticallyImplyLeading: false,
    actions: <Widget>[
      IconButton(
        onPressed: () => _key.currentState!.openEndDrawer(),
        icon: const Icon(Icons.menu),
        color: AppColors.primaryElement,
        tooltip: 'menu',
        padding: EdgeInsets.only(right: duSetWidth(32)),
      )
    ],
  );
}

PreferredSizeWidget customAppBarReturn(
  BuildContext context, {
  String title = '',
}) {
  return AppBar(
    title: Text(title),
    flexibleSpace: _buildFlexibleSpace(),
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
  );
}

PreferredSizeWidget customAppBarReturnAndMenu(
  BuildContext context,
  GlobalKey<ScaffoldState> _key, {
  String title = '',
  Color color = AppColors.primaryElement,
  Color? beginColorBar,
  Color? endColorBar,
}) {
  return AppBar(
    title: Text(title),
    flexibleSpace: _buildFlexibleSpace(
      beginColor: beginColorBar,
      endColor: endColorBar,
    ),
    titleTextStyle: TextStyle(
      color: color,
      fontSize: 18,
    ),
    leading: IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: Icon(
        Icons.arrow_back,
        color: color,
      ),
    ),
    elevation: 0,
    actions: <Widget>[
      IconButton(
        onPressed: () => _key.currentState!.openEndDrawer(),
        icon: const Icon(Icons.menu),
        color: color,
        tooltip: 'menu',
        padding: EdgeInsets.only(right: duSetWidth(32)),
      )
    ],
  );
}
