import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/ViewModel/DarkViewModel.dart';
import 'package:gaia/constants/colors.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';

import '../../ViewModel/LanugageViewModel.dart';
import '../../constants/adHelper.dart';

class MenuView extends ConsumerStatefulWidget {
  const MenuView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _MenuViewState();
}

class _MenuViewState extends ConsumerState<MenuView> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  InterstitialAd? _interstitialAd;

  var itemTitles = [
    "What is Urban Farming?",
    "Types of Urban farming",
    "Plant Calendar",
    "Organic fertilizer",
    "Soil mixtures",
    "Pests and Control",
    "Healthy plant tips",
    "Recyclable Ideas"
  ];

  var itemTitlesTagalog = [
    "Ano ang Urban Farming/Agriculture",
    "Mga Uri ng Urban farming",
    "Kalendaryo ng halaman",
    "Organikong pataba",
    "Soil mixtures",
    "Pests and Control",
    "Mga tip sa malusog na halaman",
    "Mga Recyclable na Ideya"
  ];

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();



    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    var lang = ref.watch(langProvider);
    var dark = ref.watch(darkProvider);
    var langState = ref.read(langProvider.notifier).state;
    var themeState = ref.read(darkProvider.notifier).state;

    var value = false;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: themeState ? AppColors().dark : Colors.white,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Transform.translate(
                  offset: const Offset(0, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Transform.translate(
                        offset: const Offset(80, 0),
                        child: SizedBox(
                          height: 75,
                          child: Lottie.asset(
                            'assets/lottie/plantWalk.json',
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(45, 0),
                        child: SizedBox(
                          height: 75,
                          child: Lottie.asset(
                            'assets/lottie/plantWalk.json',
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, 8),
                        child: SizedBox(
                          height: 100,
                          child: Lottie.asset(
                            'assets/lottie/plantWalk.json',
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-45, 0),
                        child: SizedBox(
                          height: 75,
                          child: Lottie.asset(
                            'assets/lottie/plantWalk.json',
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-80, 0),
                        child: SizedBox(
                          height: 75,
                          child: Lottie.asset(
                            'assets/lottie/plantWalk.json',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: FadeTransition(
                  opacity: Tween<double>(begin: 0, end: 1).animate(
                    CurvedAnimation(
                      parent: controller,
                      curve: const Interval(
                        0.5,
                        1,
                        curve: Curves.ease,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: AutoSizeText(
                              "What are you willing to learn?",
                              style: GoogleFonts.clickerScript(
                                fontSize: 30,
                                color: themeState ? Colors.white : Colors.black,
                              ),
                              maxLines: 1,
                              maxFontSize: 50,
                              minFontSize: 20,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              ref.read(langProvider.notifier).changeLang(!(ref.read(langProvider.notifier).state));
                              print(ref.read(langProvider.notifier).state);
                            },
                            icon: Icon(Icons.language, color: themeState ? Colors.white : Colors.black,),
                          ),
                          Switch(
                            value: ref.read(darkProvider.notifier).state,
                            onChanged: (value1) {
                              print("pressed");
                              ref.read(darkProvider.notifier).changeTheme(value1);
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate(4, (index){
                                      return  Container(
                                        height: 175,
                                        margin: const EdgeInsets.only(bottom: 20),
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () async {
                                                await InterstitialAd.load(
                                                  adUnitId: AdHelper.interstitialAdUnitId,
                                                  request: const AdRequest(),
                                                  adLoadCallback: InterstitialAdLoadCallback(
                                                    onAdLoaded: (ad) {
                                                      ad.fullScreenContentCallback = FullScreenContentCallback(
                                                        onAdDismissedFullScreenContent: (ad) {

                                                        },
                                                      );

                                                      _interstitialAd = ad;

                                                    },
                                                    onAdFailedToLoad: (err) {
                                                      print('Failed to load an interstitial ad: ${err.message}');
                                                    },
                                                  ),
                                                ).whenComplete(() async {
                                                  await Future.delayed(const Duration(seconds: 1));
                                                  _interstitialAd?.show();
                                                });
                                                context.push("/item${((index + 1) * 2)-1}");
                                              },
                                              child: Image.asset(
                                                "assets/images/menuImages/item${((index + 1) * 2)-1}.png",
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            AutoSizeText(
                                              langState ? itemTitles[((index + 1) * 2)-2] : itemTitlesTagalog[((index + 1) * 2)-2],
                                             // itemTitles[((index + 1) * 2)-2],

                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.literata(
                                                color: themeState ? Colors.white : Colors.black,
                                              ),
                                              maxLines: 2,
                                              maxFontSize: 26,
                                              minFontSize: 16,
                                            ),
                                          ],
                                        ),
                                      );
                                    })
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate(4, (index){
                                      return InkWell(
                                        onTap: () async {
                                          await InterstitialAd.load(
                                            adUnitId: AdHelper.interstitialAdUnitId,
                                            request: const AdRequest(),
                                            adLoadCallback: InterstitialAdLoadCallback(
                                              onAdLoaded: (ad) {
                                                ad.fullScreenContentCallback = FullScreenContentCallback(
                                                  onAdDismissedFullScreenContent: (ad) {

                                                  },
                                                );

                                                _interstitialAd = ad;

                                              },
                                              onAdFailedToLoad: (err) {
                                                print('Failed to load an interstitial ad: ${err.message}');
                                              },
                                            ),
                                          ).whenComplete(() async {
                                            await Future.delayed(const Duration(seconds: 1));
                                            _interstitialAd?.show();
                                          });
                                          context.push("/item${((index + 1) * 2)}");
                                        },
                                        child: Container(
                                          height: 175,
                                          margin: const EdgeInsets.only(bottom: 20),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                 "assets/images/menuImages/item${((index + 1) * 2)}.png",
                                              ),
                                              const SizedBox(height: 10),
                                              AutoSizeText(
                                                langState ? itemTitles[((index + 1) * 2) -1 ] : itemTitlesTagalog[((index + 1) * 2) -1 ],
                                                //itemTitles[((index + 1) * 2) -1 ],
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.literata(
                                                  color: themeState ? Colors.white : Colors.black,
                                                ),
                                                maxLines: 2,
                                                maxFontSize: 26,
                                                minFontSize: 16,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    })
                                ),
                              ),
                            ]
                          ),
                        ),
                      ),
                      const SizedBox(height: 55),
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
