import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:free_music/common/utils/utils.dart';

import '../../common/values/values.dart';
import '../../common/widgets/widgets.dart';

enum PlayerState { loading, playing, paused, stopped, completed }

class AlbumInfoPage extends StatefulWidget {
  const AlbumInfoPage({Key? key}) : super(key: key);

  @override
  State<AlbumInfoPage> createState() => _AlbumInfoPageState();
}

class _AlbumInfoPageState extends State<AlbumInfoPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final player = AudioPlayer();
  PlayerState playerState = PlayerState.stopped;

  Future<void> init() async {
    try {
      await player.setSource(AssetSource('musics/gai.mp3'));
      await player.stop();
    } catch (error) {
      print(error);
    }
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: customAppBarReturnAndMenu(
        context,
        _key,
        title: 'Album Info',
        beginColorBar: AppColors.secondBackground,
        endColorBar: AppColors.secondBackground,
      ),
      backgroundColor: AppColors.primaryBackground,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 350 + 200,
                width: duSetWidth(375),
                child: Column(
                  children: [
                    Container(
                      height: 350,
                      width: duSetWidth(375),
                      decoration: const BoxDecoration(
                          color: AppColors.secondBackground),
                    ),
                    SizedBox(
                      height: 200,
                      width: duSetWidth(375),
                      child: CustomPaint(painter: ArcBackground()),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: duSetWidth(375),
                height: 400,
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 56),
                    const Image(
                      image: AssetImage('assets/images/album_info_logo.png'),
                      width: 200,
                      height: 200,
                    ),
                    const SizedBox(height: 26),
                    Text(
                      'ARTIST',
                      style: TextStyle(
                        fontSize: duSetFontSize(11),
                        color: AppColors.secondText,
                      ),
                    ),
                    Text(
                      'Sam Smith',
                      style: TextStyle(
                        fontSize: duSetFontSize(32),
                        color: AppColors.primaryText,
                      ),
                    ),
                    const SizedBox(height: 26),
                    Text(
                      'Pop',
                      style: TextStyle(
                        fontSize: duSetFontSize(11),
                        color: AppColors.primaryElement,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () async {
              if (playerState == PlayerState.playing) {
                await player.pause();
                setState(() {
                  playerState = PlayerState.paused;
                });
              } else {
                await player.resume();
                setState(() {
                  playerState = PlayerState.playing;
                });
              }
            },
            child: playerState == PlayerState.playing
                ? const Image(
                    image: AssetImage('assets/images/pause.png'),
                    width: 40,
                  )
                : const Image(
                    image: AssetImage('assets/images/play.png'),
                    width: 40,
                  ),
          ),
        ],
      ),
    );
  }
}
