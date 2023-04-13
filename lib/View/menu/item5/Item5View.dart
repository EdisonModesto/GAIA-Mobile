import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../ViewModel/DarkViewModel.dart';
import '../../../ViewModel/LanugageViewModel.dart';
import '../../../constants/colors.dart';

class Item5View extends ConsumerStatefulWidget {
  const Item5View({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _Item5ViewState();
}

class _Item5ViewState extends ConsumerState<Item5View> {
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
                image: AssetImage("assets/images/organicBG.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                    context.pushNamed("bubble", params: {
                      "title": "Soil Mixtures",
                      "desc": langState ? """Any appropriate soil mix, including compost from various plant sources, such as bark or manure, acts as a 'booster' for plants. Organic Fertilizers are frequently added to soil mixes to increase and extend this effect""" : """Anumang angkop na paghahalo ng lupa, kabilang ang compost mula sa iba't ibang pinagmumulan ng halaman, tulad ng bark o pataba, ay nagsisilbing "booster" para sa mga halaman. Ang mga organikong pataba ay madalas na idinadagdag sa mga paghahalo ng lupa upang madagdagan at mapalawak ang epektong ito.""",
                      "image": "assets/images/organicBG.png",
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
                          "What is Soil Mixtures?",
                          style: GoogleFonts.literata(
                              color: themeState ? Colors.white :  AppColors().primaryColor,
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
                      "title": "Mixture for Fowering Plants",
                      "image": "assets/images/mixtureFowering.png",
                      "desc": langState ? """The best mix for the flowering plant is Sandy loam is composed of 50 to 70% sand, less than 20% clay, and 10 to 50% silt or organic matter. So, if your existing soil contains 20% sand, you'll need to add enough sand up to 50%. If your soil contains 40% clay, you must add enough sand or compost to reduce that percentage.

You may see additional tutorials here: https://drive.google.com/drive/folders/1l-FK0qPhX0-Wsd3zM1rfVCpKUxMIICyJ?usp=share_link
""" : """Ang pinakamagandang halo para sa namumulaklak na halaman ay Sandy loam ay binubuo ng 50 hanggang 70% na buhangin, mas mababa sa 20% na luad, at 10 hanggang 50% na silt o organikong bagay. Kaya, kung ang iyong umiiral na lupa ay naglalaman ng 20% na buhangin, kakailanganin mong magdagdag ng sapat na buhangin hanggang sa 50%. Kung ang iyong lupa ay naglalaman ng 40% na luad, dapat kang magdagdag ng sapat na buhangin o pag-aabono upang mabawasan ang porsyento na iyon."""
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
                          "Mixture for Fowering Plants",
                          style: GoogleFonts.literata(
                              color: themeState ? Colors.white :  AppColors().primaryColor,
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
                      "title": "Potting Mix for Vegetable Plant",
                      "image": "assets/images/vegMix.png",
                      "desc": langState ? """Many believe that using local soil for raised beds is the best option. This method considers the local climate and environment when growing vegetables. Begin with the basic soil mix formula: 50% compost and 50% local topsoil.

Mel's Mix, formulated by Mel Bartholomew, who popularized the Square Foot Gardening method, is the Holy Grail for most raised bed gardeners. It's mixed by volume using an easy formula consisting of
1. 1/3 coarse horticultural vermiculite
2. 1/3 peat moss
3. 1/3 blended compost

You may see additional tutorials here: https://drive.google.com/drive/folders/1l-FK0qPhX0-Wsd3zM1rfVCpKUxMIICyJ?usp=share_link"""
                          : """Marami ang naniniwala na ang paggamit ng lokal na lupa para sa mga nakataas na kama ay ang pinakamahusay na pagpipilian. Isinasaalang-alang ng pamamaraang ito ang lokal na klima at kapaligiran kapag nagtatanim ng mga gulay. Magsimula sa basic soil mix formula: 50% compost at 50% local topsoil.

Ang Mel's Mix, na binuo ni Mel Bartholomew, na nagpasikat sa paraan ng Square Foot Gardening, ay ang Holy Grail para sa karamihan ng mga nakataas na hardinero. Hinahalo ito ayon sa lakas ng tunog gamit ang isang madaling formula na binubuo ng
1. 1/3 magaspang horticultural vermiculite
2. 1/3 peat moss
3. 1/3 pinaghalo na compost

You may see additional tutorials here: https://drive.google.com/drive/folders/1l-FK0qPhX0-Wsd3zM1rfVCpKUxMIICyJ?usp=share_link"""
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
                          "Mix for Vegetable Plants",
                          style: GoogleFonts.literata(
                              color: themeState ? Colors.white :  AppColors().primaryColor,
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
                      "title": "Mixture for Indoor Plants",
                      "image": "assets/images/indoorMix.png",
                      "desc": langState ? """Potting Soil Mixing Formula to make your ideal potting soil for an indoor plant,
Thoroughly combine 1 part peat or coir
1. 1 part perlite or vermiculite
2. 1/2 part composted bark
3. 1/2 part worm castings

With this mix, you can grow only your indoor flower garden.

You may see additional tutorials here: https://drive.google.com/drive/folders/1l-FK0qPhX0-Wsd3zM1rfVCpKUxMIICyJ?usp=share_link"""
                          : """Potting Soil Mixing Formula upang gawin ang iyong perpektong potting soil para sa isang panloob na halaman,
1. Pagsamahin nang husto ang 1 bahagi ng pit o bunot
2. ibahagi perlite o vermiculite
3. 1/2 bahagi ng composted bark
4. 1/2 bahagi worm casting

Sa halo na ito, maaari mo lamang palaguin ang iyong panloob na hardin ng bulaklak."""
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
                          "Mixture for Indoor Plants",
                          style: GoogleFonts.literata(
                              color: themeState ? Colors.white :  AppColors().primaryColor,
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
