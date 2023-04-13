import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:video_player/video_player.dart';

import '../ViewModel/DarkViewModel.dart';
import '../constants/adHelper.dart';
import '../constants/colors.dart';

class DescView extends ConsumerStatefulWidget {
  const DescView({
    required this.title,
    required this.image,
    required this.desc,

    Key? key,
  }) : super(key: key);

  final title, image, desc;

  @override
  ConsumerState createState() => _DescViewState();
}

class _DescViewState extends ConsumerState<DescView> {
  late VideoPlayerController _controller;
  BannerAd? _bannerAd;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        'https://www.dropbox.com/s/sd3snvcsmxvtq3y/FFJ%20%26%20FAA.mp4?dl=1');
    if(widget.title == "Fish Amino Acid" || widget.title == "Fermented Fruit Juice") {
      _controller
      ..initialize().then((_) {
          // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
          setState(() {});
        });
    }
    // TODO: Load a banner ad
    BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          ad.dispose();
        },
      ),
    ).load();
  }

  @override
  Widget build(BuildContext context) {

    var dark = ref.watch(darkProvider);
    var themeState = ref.read(darkProvider.notifier).state;

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: themeState ? AppColors().dark : Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 45,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage(
                          widget.image,
                        ),
                        fit: BoxFit.cover,
                      alignment: Alignment.center,
                    )
                ),
                padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Chip(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    backgroundColor: themeState ? AppColors().dark : Colors.white,
                    label: Text(
                      widget.title,
                      style: GoogleFonts.literata(
                          color: themeState ? Colors.white : AppColors().primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                ),
              )

            ),
            Expanded(
              flex: 55,
              child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.desc.toString().trim(),
                          style: GoogleFonts.literata(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: themeState ? Colors.white : Colors.black
                          ),
                        ),
                        const SizedBox(
                          height: 20,),
                        Visibility(
                          visible: widget.title == "Fish Amino Acid" || widget.title == "Fermented Fruit Juice",
                          child: _controller.value.isInitialized
                              ? Stack(
                                children: [
                                  AspectRatio(
                                    aspectRatio: _controller.value.aspectRatio,
                                    child: VideoPlayer(
                                    _controller
                                    ),
                                  ),
                                  AspectRatio(
                                    aspectRatio: _controller.value.aspectRatio,
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: IconButton(
                                        icon: Icon(
                                          _controller.value.isPlaying
                                              ? Icons.pause
                                              : Icons.play_arrow,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _controller.value.isPlaying
                                                ? _controller.pause()
                                                : _controller.play();
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              )
                              : Container(),
                        )
                      ],
                    ),
                  )),
            ),
            if (_bannerAd != null)
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: _bannerAd!.size.width.toDouble(),
                  height: _bannerAd!.size.height.toDouble(),
                  child: AdWidget(ad: _bannerAd!),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
