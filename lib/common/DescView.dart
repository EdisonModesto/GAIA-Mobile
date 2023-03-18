import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

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
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              flex: 45,
              child: Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      widget.image,
                      alignment: Alignment.center,
                      scale: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Transform.translate(
                      offset: const Offset(0, 20),
                      child: Chip(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        label: Text(
                          widget.title,
                          style: GoogleFonts.literata(
                              color: AppColors().primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 55,
              child: SizedBox(
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Text(
                        widget.desc,
                        style: GoogleFonts.literata(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors().primaryColor),
                      ),
                    )),
              ),
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
