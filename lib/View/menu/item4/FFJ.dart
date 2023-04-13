import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../ViewModel/DarkViewModel.dart';
import '../../../ViewModel/LanugageViewModel.dart';
import '../../../constants/colors.dart';

class FFJ extends ConsumerStatefulWidget {
  const FFJ({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _FFJState();
}

class _FFJState extends ConsumerState<FFJ> {
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
                image: AssetImage("assets/images/FFJ.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Chip(
                  backgroundColor: Color(0xffFFE77A),

                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  label: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Center(
                      child: Text(
                        "Fermented Fruit Juice",
                        style: GoogleFonts.literata(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: (){
                          context.pushNamed("desc", params: {
                            "title": "Fermented Fruit Juice",
                            "image": "assets/images/whatFFJ.png",
                            "desc": langState? """Fruit juice/Katas ng Burong Prutas (KBP) or better known as fermented fruit juice (FFJ) is a fruit juice rich in vitamins, enzymes and hormones. The best fruit juices are potassium-rich fruits such as bananas, mangoes, papayas, avocados and leafy vegetables.

SOURCE: Department of Agriculture""" : """Ang katas ng burong prutas (KBP) o mas kilala sa tawag na fermented fruit juice (FFJ) ay katas mula sa binurong prutas na mayaman sa bitamina, enzymes at hormones. Pinakamainam na gawing katas ng burong prutas ang mga hinog na prutas na mayaman sa potassium tulad ng saging (pati balat nito), manga, papaya, avocado at magulang na kalabasa.

SOURCE: Department of Agriculture"""
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
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          label: SizedBox(
                            child: Center(
                              child: Text(
                                langState? "What is Fermented Fruit Juice?" : "Ano ang Fermented Fruit Juice?",
                                style: GoogleFonts.literata(
                                    color: themeState ? Colors.white : Colors.black,
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
                            "title": "Materials",
                            "image": "assets/images/ffjMaterials.png",
                            "desc": """
1. Container (earthen jar, food grade plastic container, bottle, etc.)
2. Clean paper
3. Twine
4. Molasses


SOURCE: Department of Agriculture


"""
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
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          label: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Center(
                              child: Text(
                                langState ? "Materials" : "Materyales",
                                style: GoogleFonts.literata(
                                    color: themeState ? Colors.white : Colors.black,
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
                          context.pushNamed("steps", params: {
                            "title": "Steps",
                            "desc": langState? """1. Cut small 1 pound of ripe fruit. Do not include the skin and seeds of the fruit except the banana. Bananas, manga, papaya and avocado can be used. The ripe pumpkin can also be used,

2. Place the chopped fruit inside the pot and mix with 1 kilogram of molasses.

3.  Cover with clean paper and tie it. Put in a cool and deep place. Ferment for 7 days.

4. Use FFJ broths for spraying or watering the plant. It can also be consumed by human beings. You will get more than 2.5 liters of Fruit Juice or Fermented Plant Juice at the 1:1 ratio you made.


You may see additional tutorials here: https://drive.google.com/drive/folders/1l-FK0qPhX0-Wsd3zM1rfVCpKUxMIICyJ?usp=share_link


SOURCE: Department of Agriculture & Quezon City University Center for Urban
 Agriculture and Innovation
""" : """1. Gayatin nang maliit ang 1 kilong hinog na prutas. Huwag isama ang balat at buto ng prutas maliban sa saging. Maaaring gamitin ang saging, manga, papaya at avocado. Ang magulang nakalabasa ay maaari ring gamitin.

2. Ilagay ang ginayat na prutas sa loob ng tapayan at haluan ng 1 kilong molasses.

3. Takpan ng malinis na papel at tali nito. Ilagay sa malamig at malalim na lugar. Buruhin sa loob ng 7 araw.

4. Gamitin ang mga sabaw pang-isprey o pandilig sa halaman. Maaari rin itong inumin ng tao. Makakukuha ng mahigit-kumulang 2.5 litro ng Katas ng Burong Prutas o Fermented Plant Juice sa 1:1 ratio na iyong ginawa.


You may see additional tutorials here: 
https://drive.google.com/drive/folders/1l-FK0qPhX0-Wsd3zM1rfVCpKUxMIICyJ?usp=share_link"""
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
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          label: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Center(
                              child: Text(
                                langState ? "Steps" : "Paraan ng Paggawa",
                                style: GoogleFonts.literata(
                                    color: themeState ? Colors.white : Colors.black,
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
                          context.pushNamed("steps", params: {
                            "title": "How to use FPJ?",
                            "desc": langState?"""1. Mix 2 tablespoons FFJ or 20 ml in 1 liter of water or 2 cans of sardines per 16 liters of water.

2. Spray on plants in the morning or in the afternoon during flowering and bearing fruit. Apply once a week or once every two weeks from flowering to fruiting.

3. Add the same ratio of Indigenous Microorganisms (IMO) to the seasoned FFJ and use it to spray plants during the fruiting season to sweeten the fruit.

4. It can also be used for pets. Mix 1 tablespoon of FFJ with the drinking water of the cared animal, especially during the time of illness, to speed up recovery from illness and fatigue.

SOURCE: Department of Agriculture 
""" : """1. Ihalo ang 2 kutsarang FFJ o 20ml sa 1 litrong tubig o 2 lata ng sardines sa bawat 16 litrong tubig.

2. Idilig o iisprey sa halaman sa umaga o dakong hapon sa panahon ng pamumulaklak at pamumunga. Maglagay minsan isang linggo o minsan bawat dalawang lingo simula pamumulaklak hanggang pamumunga.

3. Dagdagan ng kaparehas na ratio ng Indigenous Microorganisms (IMO) ang tinimplang FFJ at gamitin itong pang-isprey sa mga punong kahoy sa panahon ng pamumunga upang tumamis ang bunga

4. Maaari rin itong gamitin para sa mga alagang hayop. Ihalo ang 1 kutsarang FFJ sa inuming tubig ng inaalagaang hayop, lalo na sa panahon na may karamdaman ang mga ito, upang mas mabilis ang paggaling mula sa karamdaman at pagod (stress).

SOURCE: Department of Agriculture"""
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
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          label: SizedBox(
                            child: Center(
                              child: Text(
                                langState ? "How to use FFJ" : "Paraan ng Paggamit ng FFJ",
                                style: GoogleFonts.literata(
                                    color: themeState ? Colors.white : Colors.black,
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
                          context.pushNamed("steps", params: {
                            "title": "Benefits of FFJ",
                            "desc": langState ? """1. It increases the element of plant need through the roots and stems.
                            
2. Sweetens the fruit of the plant.

3. Helps the plant absorb nutrients from the soil.

4. Protects plants from diseases and pests.

5. Can be given to pets to help with digestion.

SOURCE: Department of Agriculture 
""" : """1. Pinatataas nito ang elementong kailangan ng halaman sa pamamagitan ng mga dahoon at ugat nito.

2. Pinatatamis ang bunga ng halaman.

3. Tumutulong sa halaman sa pagsipsip ng mga sustansya sa lupa.

4. Pinoprotektahan ang mga halaman sa mga sakit at peste.

5. Puwedeng ipainom sa mga alagang hayop upang makatulong sa digestion.

SOURCE: Department of Agriculture"""
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
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          label: SizedBox(
                            child: Center(
                              child: Text(
                                langState ? "Benefits of FFJ" : "Benepisyo ng Paggamit ng FFJ",
                                style: GoogleFonts.literata(
                                    color: themeState ? Colors.white : Colors.black,
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
                ),
              ],
            ),
          )
      ),
    );
  }
}
