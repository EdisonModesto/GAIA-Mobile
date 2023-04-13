import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../ViewModel/DarkViewModel.dart';
import '../../../ViewModel/LanugageViewModel.dart';
import '../../../constants/colors.dart';

class EggShell extends ConsumerStatefulWidget {
  const EggShell({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _EggShellState();
}

class _EggShellState extends ConsumerState<EggShell> {
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
                image: AssetImage("assets/images/FPJ.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Chip(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  backgroundColor: Color(0xffFFE77A),
                  label: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Center(
                      child: Text(
                        "Egg Shell Calphos",
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
                            "title": "Egg shell (Calphos)",
                            "image": "assets/images/eggshells.png",
                            "desc": langState ? """Calphos is used to remediate calcium deficient soil and works best on plants that are just starting to bloom. Or the change from vegetative to reproductive growth in plants brings about several changes in how nutrients and other valuable elements are acquired. Calcium is in charge of strengthening the plant by stabilizing its structure, which includes the roots, stems, and leaves, which will support the production of heavy fruit or flowers."""
                                      : """Ang calcium at phosphorus ay dalawang natural na mineral na sagana sa calphos, isang kabibi, buto, at pinaghalong suka. Ang Calphos ay ginagamit upang i-remediate ang kulang sa calcium na lupa at pinakamahusay na gumagana sa mga halaman na nagsisimula pa lang mamukadkad. O ang pagbabago mula sa vegetative tungo sa reproductive growth sa mga halaman ay nagdudulot ng ilang pagbabago sa kung paano nakukuha ang mga nutrients at iba pang mahahalagang elemento. Ang kaltsyum ang namamahala sa pagpapalakas ng halaman sa pamamagitan ng pagpapatatag ng istraktura nito, na kinabibilangan ng mga ugat, tangkay, at dahon, na susuporta sa paggawa ng mabibigat na prutas o bulaklak."""
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
                                langState ? "What is Egg Shell Calphos?" : "Ano ang Egg Shell Calphos?",
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
                            "title": "Egg shell (Calphos) Materials",
                            "image": "assets/images/eggshells.png",
                            "desc": langState ? """Ingredients and materials/
1. Plastic bottle container

2. Eggshell or oyster or muscle shell

3. Chicken bone

4. Mortar and pestle

5. Weight scale

6. Vinegar

""" : """Paano gumawa ng Calphos:

Mga sangkap:
    1. Lalagyan ng plastik na bote
    2. Eggshell o talaba o kabibi ng kalamnan
    3. Buto ng manok
    4. Mortar at halo
    5. Timbangan
    6. Suka

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
                                langState ? "Materials" : "Mga Materyales",
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
                            "title": "Calphos Steps",
                            "image": "assets/images/stepEgg.png",
                            "desc": langState ? """Step 1: Crushed all the eggshells, oysters, and muscle shells into the mortar and pestle or crushed it with rolling wood or bottle.

Step 2: Weight them into the scale and, put them into the plastic bottle container

Step 3: Put vinegar into the plastic container with a ratio of 1:5.

Step 4: Wait after the chemical reaction to stop and then cover the container.

""" : """Step 1: Durogin ang lahat ng balat ng itlog, talaba, at mussel shell sa mortar at pestle o durugin ito ng gumugulong na kahoy o bote.

Step 2: Timbangin ang mga ito sa timbangan at, ilagay sa lalagyan ng plastik na bote

Step 3: Ilagay ang suka sa plastic container na may ratio na 1:5.

Step 4: Hintaying huminto ang reaksiyong kemikal at pagkatapos ay takpan ang lalagyan.
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
                          context.pushNamed("desc", params: {
                            "title": "Use of Calphos",
                            "image": "assets/images/useEgg.png",
                            "desc": langState ? """The ratio is 10 ml calphos to 1 gallon of water for the usage. Apply it to your plant once a week.  it is better to apply at late afternoon when the sun is about to set."""
                                    : """"Ang ratio ay 10 ml calphos sa 1 galon ng tubig para sa paggamit. Ilapat ito sa iyong halaman isang beses sa isang linggo."""
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
                                langState ? "Use of Calphos" : "Paraan ng Paggamit ng Calphos",
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
