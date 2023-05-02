import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';

import '../../../ViewModel/DarkViewModel.dart';
import '../../../ViewModel/LanugageViewModel.dart';
import '../../../common/PageView.dart';
import '../../../constants/adHelper.dart';
import '../../../constants/colors.dart';

class Item2View extends ConsumerStatefulWidget {
  const Item2View({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _Item2ViewState();
}

class _Item2ViewState extends ConsumerState<Item2View> {

  InterstitialAd? _interstitialAd;

  @override
  Widget build(BuildContext context) {

    var lang = ref.watch(langProvider);
    var langState = ref.read(langProvider.notifier).state;
    var dark = ref.watch(darkProvider);
    var themeState = ref.read(darkProvider.notifier).state;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/item2BG.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  context.pushNamed("desc", params: {
                    "title": "Backyard Gardening",
                    "image": "assets/images/byGarden.png",
                    "desc": langState ? """Backyard Gardening is converting an open area into a productive and usable area for the family and a home for plants and animals that would otherwise be displaced by urban development. Backyard gardens benefit communities by encouraging you ti eat more fresh fruits and vegetables. Garden-ripened veggies have more nutrients than store-bought vegetables that must be harvested early.
""" : """Ang Backyard Gardening ay ginagawa ang isang bukas na lugar sa isang produktibo at magagamit na lugar para sa pamilya at isang tahanan para sa mga halaman at hayop na kung hindi man ay maililipat ng pag-unlad ng lungsod. """
                  });
                },
                child: Chip(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  backgroundColor: themeState ? AppColors().dark : Colors.white,
                  avatar: Lottie.asset(
                    "assets/lottie/prefix.json",
                    height: 200,
                    width: 200
                    //fit: BoxFit.cover,
                  ),
                  label: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        "Backyard Gardening",
                        style: GoogleFonts.literata(
                          color: themeState ? Colors.white : AppColors().primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),
              ),
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
                  context.push("/backyardGardening");
                },
                child: Chip(
                  backgroundColor: themeState ? AppColors().dark : Colors.white,
                  avatar: Lottie.asset(
                      "assets/lottie/prefix.json",
                      height: 200,
                      width: 200
                    //fit: BoxFit.cover,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  label: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        "Container Gardening",
                        style: GoogleFonts.literata(
                            color: themeState ? Colors.white : AppColors().primaryColor,

                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  context.push("/hydrophonics");
                },
                child: Chip(
                  backgroundColor: themeState ? AppColors().dark : Colors.white,
                  avatar: Lottie.asset(
                      "assets/lottie/prefix.json",
                      height: 200,
                      width: 200
                    //fit: BoxFit.cover,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  label: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        "Hydroponics",
                        style: GoogleFonts.literata(
                            color: themeState ? Colors.white : AppColors().primaryColor,

                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  context.pushNamed("desc", params: {
                    "title": "Vertical/Wall Farming",
                    "image": "assets/images/wallGardening.png",
                    "desc": langState ? """This method is the most economical in area and space. This is suitable for buildings where the walls are exposed to direct sunlight.






SOURCE: BUREAU OF PLANT INDUSTRY""" : """Ang pamamaraan na ito ay ang pinakamatipid sa lugar at espasyo. Bagay ito sa mga gusali na kung saan ang mga pder ay direktang nasisikatan ng araw.







SOURCE: BUREAU OF PLANT INDUSTRY"""
                  });
                },
                child: Chip(
                  backgroundColor: themeState ? AppColors().dark : Colors.white,
                  avatar: Lottie.asset(
                      "assets/lottie/prefix.json",
                      height: 200,
                      width: 200
                    //fit: BoxFit.cover,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  label: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        "Vertical/Wall Farming",
                        style: GoogleFonts.literata(
                            color: themeState ? Colors.white : AppColors().primaryColor,

                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  context.push(
                      "/pageView",
                      extra: PageArguments(
                          pageDetails: [
                            PageDetails(
                                title: "Aquaponics",
                                image: "assets/images/aquaponics1.png",
                                description: langState? "Aquaponics is a process for raising aquatic plants and animals in a recirculating environment. The term 'aquaponics' is a combination of the words 'aquaculture,' which is the practice of raising fish in limited spaces, and 'hydroponics,' which is the growing of plants in water (the growing of plants, usually in a soil-less environment). Aquaponic systems come in various sizes, from compact interior units to enormous commercial ones. They could be brackish or saltwater systems or freshwater systems." :
                                    """Ang Aquaponics ay isang proseso para sa pagpapalaki ng mga aquatic na halaman at hayop sa isang recirculating na kapaligiran. Ang terminong "aquaponics" ay isang kumbinasyon ng mga salitang "aquaculture," na kung saan ay ang pagsasanay ng pag-aalaga ng isda sa limitadong mga lugar, at "hydroponics," na kung saan ay ang paglaki ng mga halaman sa tubig (ang paglaki ng mga halaman, kadalasan sa isang lupa- mas kaunting kapaligiran). Ang mga aquaponic system ay may iba't ibang laki, mula sa mga compact interior unit hanggang sa malalaking komersyal. Maaaring ang mga ito ay maalat o mga sistema ng tubig-alat o mga sistema ng tubig-tabang."""
                            ),
                            PageDetails(
                                title: "Aquaponics",
                                image: "assets/images/aquaponics2.png",
                                description: langState ? "The water flows from the fish tank to the sediment tank, which filters big waste from the fish tank. The water will then be pumped to the biofilter by the water pump. The biofilter will filter the microscopic particles that can harm plant roots; the water will then flow to the roots tank to obtain plant nutrients before returning to the water pump to be recycled."
                                      : """Ang tubig ay dumadaloy mula sa tangke ng isda patungo sa tangke ng sediment, na nagsasala ng malalaking basura mula sa tangke ng isda. Ang tubig ay ibobomba sa biofilter sa pamamagitan ng water pump. Sasalain ng biofilter ang mga microscopic na particle na maaaring makapinsala sa mga ugat ng halaman; ang tubig ay dadaloy sa tangke ng mga ugat upang makakuha ng mga sustansya ng halaman bago bumalik sa pump ng tubig upang irecycle."""
                            ),
                          ]
                      )
                  );
                },
                child: Chip(
                  backgroundColor: themeState ? AppColors().dark : Colors.white,
                  avatar: Lottie.asset(
                      "assets/lottie/prefix.json",
                      height: 200,
                      width: 200
                    //fit: BoxFit.cover,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  label: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        "Aquaponics",
                        style: GoogleFonts.literata(
                            color: themeState ? Colors.white : AppColors().primaryColor,

                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  context.pushNamed("desc", params: {
                    "title": "Rooftop Gardening",
                    "image": "assets/images/RooftopGardening.png",
                    "desc": langState?"Rooftop gardening is a sort of urban agriculture that involves growing food on the roofs of buildings. Aside from aesthetics, rooftop gardens provide architectural enhancement, temperature control, recreational opportunities, wildlife habitats, and even a space for growing food."
                                  : """Ang tubig ay dumadaloy mula sa tangke ng isda patungo sa tangke ng sediment, na nagsasala ng malalaking basura mula sa tangke ng isda. Ang tubig ay ibobomba sa biofilter sa pamamagitan ng water pump. Sasalain ng biofilter ang mga microscopic na particle na maaaring makapinsala sa mga ugat ng halaman; ang tubig ay dadaloy sa tangke ng mga ugat upang makakuha ng mga sustansya ng halaman bago bumalik sa pump ng tubig upang irecycle."""
                  });
                },
                child: Chip(
                  backgroundColor: themeState ? AppColors().dark : Colors.white,
                  avatar: Lottie.asset(
                      "assets/lottie/prefix.json",
                      height: 200,
                      width: 200
                    //fit: BoxFit.cover,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  label: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        "Rooftop gardening",
                        style: GoogleFonts.literata(
                            color: themeState ? Colors.white : AppColors().primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
