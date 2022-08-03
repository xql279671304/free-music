import 'package:flutter/material.dart';
import 'package:free_music/common/utils/utils.dart';
import 'package:free_music/common/values/values.dart';
import 'package:free_music/common/widgets/widgets.dart';

class AlbumsPage extends StatefulWidget {
  const AlbumsPage({Key? key}) : super(key: key);

  @override
  State<AlbumsPage> createState() => _AlbumsPageState();
}

Widget _buildListItem(
  BuildContext context, {
  bool hasSplit = true,
}) {
  return Container(
    decoration: const BoxDecoration(
      color: AppColors.primaryBackground,
      // boxShadow: <BoxShadow>[
      //   BoxShadow(
      //     color: AppColors.primaryText,
      //   ),
      // ],
    ),
    child: Column(
      children: [
        Center(
          child: SizedBox(
            width: duSetWidth(295),
            height: duSetHeight(336),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: duSetHeight(28),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/album');
                  },
                  child: Image(
                    image: const AssetImage('assets/images/albums_1@2x.png'),
                    height: duSetHeight(225),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Freedom Boys',
                          style: TextStyle(
                            fontSize: duSetFontSize(20),
                          ),
                        ),
                        Text(
                          '25 Songs',
                          style: TextStyle(
                            fontSize: duSetFontSize(14),
                            color: AppColors.secondText,
                          ),
                        ),
                      ],
                    ),
                    Image(
                      image: const AssetImage('assets/images/play.png'),
                      width: duSetWidth(43),
                      height: duSetHeight(43),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Divider(
          height: 1.0,
          indent: 0,
          color: !hasSplit ? AppColors.primaryBackground : AppColors.splitLine,
        )
      ],
    ),
  );
}

class _AlbumsPageState extends State<AlbumsPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: customAppBarReturnAndMenu(context, _key, title: 'Albums'),
      backgroundColor: AppColors.primaryBackground,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _buildListItem(context),
          _buildListItem(context),
          _buildListItem(context, hasSplit: false),
        ],
      ),
    );
  }
}
