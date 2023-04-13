import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../ViewModel/DarkViewModel.dart';
import '../../../ViewModel/LanugageViewModel.dart';

class Item1View extends ConsumerStatefulWidget {
  const Item1View({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _Item1ViewState();
}

class _Item1ViewState extends ConsumerState<Item1View> {
  @override
  Widget build(BuildContext context) {
    ref.watch(langProvider);
    var dark = ref.watch(darkProvider);
    var themeState = ref.read(darkProvider.notifier).state;
    var langState = ref.read(langProvider.notifier).state;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: themeState ? AppColors().dark : Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 45,
              child: Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/images/splashBG.png",
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
                          "Urban Agriculture",
                          style: GoogleFonts.literata(
                            color:Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 55,
              child: SingleChildScrollView(
                child: SizedBox(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      langState ?
                      """It is the growing of vegetables or food in a place or city, or populated area. This method uses an empty loop that is normally crowded.


• Benefits of Urban Agriculture
• Unused property can be utilized.
• Save on transportation costs.
• Eat with confidence!
• Helps nature.
• Meaningful pastime.
• Additional income.


SOURCE: BUREAU OF PLANT INDUSTRY""" : """Ito ay ang pagpapalaki ng mga gulay o pagkain sa isang lugar o lungsod, o matataong lugar. Ang pamamaraang it ay gumagamit ng bakanteng lup na karaniwan ay siksikan.


Mga Pakinabang:
• Napapakinabangan ang lupang hindi nagagamit.
• Tipid sa gastusing pang-transportasyon.
• Kumain nang may kumpiyansa!
• Nakakatulong sa kalikasan.
• Makabuluhang pampalipas oras.
• Karagdagang kita.


SOURCE: BUREAU OF PLANT INDUSTRY
""",
                      style: GoogleFonts.literata(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: themeState ? Colors.white : Colors.black,
                      ),
                    )
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Transform.translate(
                  offset: const Offset(30, 0),
                  child: SizedBox(
                    height: 60,
                    child: Lottie.asset(
                      'assets/lottie/TwoPlants.json',
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(20, 0),
                  child: SizedBox(
                    height: 60,
                    child: Lottie.asset(
                      'assets/lottie/TwoPlants.json',
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, 8),
                  child: SizedBox(
                    height: 85,
                    child: Lottie.asset(
                      'assets/lottie/TwoPlants.json',
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-20, 0),
                  child: SizedBox(
                    height: 60,
                    child: Lottie.asset(
                      'assets/lottie/TwoPlants.json',
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-30, 0),
                  child: SizedBox(
                    height: 60,
                    child: Lottie.asset(
                      'assets/lottie/TwoPlants.json',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
