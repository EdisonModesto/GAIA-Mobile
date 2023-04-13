import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../ViewModel/DarkViewModel.dart';
import '../constants/adHelper.dart';
import '../constants/colors.dart';

class BubbleView extends ConsumerStatefulWidget {
  const BubbleView({
    required this.title,
    required this.desc,
    required this.image,
    Key? key,
  }) : super(key: key);

  final title, desc, image;

  @override
  ConsumerState createState() => _BubbleViewState();
}

class _BubbleViewState extends ConsumerState<BubbleView> {
  BannerAd? _bannerAd;

  @override
  void initState() {
    // TODO: Load a banner ad
    BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              widget.image,
            ),
            fit: BoxFit.fitWidth
          )
        ),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: themeState ? AppColors().dark : Color.fromRGBO(239, 239, 239, 0.9),
                    borderRadius: BorderRadius.all(Radius.circular(16))
                ),
                child: Column(
                  children: [
                    Chip(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      label: AutoSizeText(
                        widget.title,
                        style: GoogleFonts.literata(
                            color: AppColors().primaryColor,
                            fontWeight: FontWeight.w600,
                            ),
                        maxLines: 1,
                        maxFontSize: 18,
                        minFontSize: 0,
                      ),
                    ),
                    Text(
                      widget.desc,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                        color: themeState ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: _bannerAd != null ? Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: _bannerAd!.size.width.toDouble(),
                    height: _bannerAd!.size.height.toDouble(),
                    child: AdWidget(ad: _bannerAd!),
                  ),
                ) :
                  SizedBox()
              )

            ],
          ),
        ),
      ),
    );
  }
}
