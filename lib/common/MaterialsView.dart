import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../constants/adHelper.dart';
import '../constants/colors.dart';

class MaterialsView extends ConsumerStatefulWidget {
  const MaterialsView({
    required this.title,
    required this.image,
    Key? key,
  }) : super(key: key);

  final title, image;

  @override
  ConsumerState createState() => _MaterialsViewState();
}

class _MaterialsViewState extends ConsumerState<MaterialsView> {
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
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0, bottom: 0),
          child: Column(
            children: [
              Chip(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                label: Text(
                  widget.title,
                  style: GoogleFonts.literata(
                      color: AppColors().primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    widget.image,
                    alignment: Alignment.center,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(height: 50.0),
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
      ),
    );
  }
}
