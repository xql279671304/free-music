import 'package:flutter/material.dart';
import 'package:free_music/common/utils/utils.dart';
import 'package:free_music/common/values/values.dart';
import 'package:free_music/common/widgets/widgets.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({Key? key}) : super(key: key);

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

Widget _buildListItem(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(
      top: 20,
    ),
    child: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/album-info');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    return;
                  },
                  child: Image(
                    image: const AssetImage('assets/images/play.png'),
                    width: duSetWidth(20),
                    height: duSetHeight(20),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  'The Crunge',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            '7:59',
            style: TextStyle(
              color: AppColors.secondText,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildList(BuildContext context) {
  return SizedBox(
    width: duSetWidth(295.5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildListItem(context),
        _buildListItem(context),
        _buildListItem(context),
        _buildListItem(context),
        _buildListItem(context),
        _buildListItem(context),
        _buildListItem(context),
        _buildListItem(context),
        _buildListItem(context),
        _buildListItem(context),
        _buildListItem(context),
      ],
    ),
  );
}

class _AlbumPageState extends State<AlbumPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: customAppBarReturnAndMenu(
          context,
          _key,
          title: 'Album',
          color: AppColors.primaryBackground,
          beginColorBar: const Color(0xFF1d1c1e),
          endColorBar: const Color(0xFF1d1c1e),
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 30,
              ),
              decoration: const BoxDecoration(
                color: AppColors.primaryBackground,
              ),
              child: Column(
                children: [
                  Image(
                    image: const AssetImage('assets/images/album_cover@2x.png'),
                    height: duSetHeight(445 - 70),
                    width: duSetWidth(375),
                    fit: BoxFit.fill,
                  ),
                  Container(
                    height: duSetHeight(41),
                    width: duSetWidth(375),
                    decoration: const BoxDecoration(
                      color: AppColors.splitLine,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 25,
                    ),
                    child: Text(
                      'TRACKS',
                      style: TextStyle(
                        color: AppColors.secondText,
                        fontSize: duSetFontSize(11),
                      ),
                    ),
                  ),
                  _buildList(context),
                ],
              ),
            ),
          ),
        ));
  }
}
