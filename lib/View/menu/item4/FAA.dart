import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../ViewModel/LanugageViewModel.dart';

class FAA extends ConsumerStatefulWidget {
  const FAA({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _FAAState();
}

class _FAAState extends ConsumerState<FAA> {
  @override
  Widget build(BuildContext context) {
    var lang = ref.watch(langProvider);
    var langState = ref.read(langProvider.notifier).state;
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/FAA.png"),
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
                        "Fish Amino Acid",
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
                            "title": "Fish Amino Acid",
                            "image": "assets/images/faaWhat.png",
                            "desc": langState ? """Fish Amino Acid (FAA) contains various elements necessary for the growth of leaves and branches of plants. It is also an alternative source of protein for livestock."""
                                      : """Ang katas ng burong isda (KBI) o fish amino acid (FAA) ay nagtataglay ng iba’t-ibang element ng kinakailangan sa paglago ng mga dahoon at sanga ng halaman. Isa rin itong alternatibong mapagkukunan ng protina para sa mga alagang hayop.


SOURCE: Department of Agriculture"""
                          });
                        },
                        child: Chip(
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
                                langState ? "Whats is Fish Amino Acid" : "Ano ang Fish Amino Acid",
                                style: GoogleFonts.literata(
                                    color: Colors.black,
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
                          context.pushNamed("materials", params: {
                            "title": "Materials",
                            "image": "assets/images/faaMaterials.png",
                          });
                        },
                        child: Chip(
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
                                langState? "Materials" : "Materyales",
                                style: GoogleFonts.literata(
                                    color: Colors.black,
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
                            "desc": langState ? """1. Place the spines, scales, gills, and skin of the fish in a tub. Add molasses in a ratio of 1:1 kg. Mix it well.

2.  Transfer the mixture to the vessel to ferment.

3.  Cover with clean paper and place in a cool, deep, clean place. After 20 days, you can take the broth. Keep the container hidden in a dark and cool place.

SOURCE: Department of Agriculture & Quezon City University Center for Urban
 Agriculture and Innovation
 
 You may see additional tutorials here: https://drive.google.com/drive/folders/1l-FK0qPhX0-Wsd3zM1rfVCpKUxMIICyJ?usp=share_link
""" : """1. Ilagay ang mga tinik, kaliskis, hasang, at balat ng isda sa isang batya. Dagdagan ng molasses sa ratio na 1:1 kg. Haluing Mabuti.

2.  Isalin ang hinalo sa sisidlan para buruhin.

3. Takpan ng malinis na papel at ilagay sa malamig, malalim, at malinis na lugar. Pagkatapos ng 20 araw, maaari ng kunin ang sabaw. Panatilihing nakatago ang sisidlan sa madilim at malamig na lugar.

SOURCE: Department of Agriculture & Quezon City University Center for Urban
 Agriculture and Innovation
 
 You may see additional tutorials here: https://drive.google.com/drive/folders/1l-FK0qPhX0-Wsd3zM1rfVCpKUxMIICyJ?usp=share_link
"""
                          });
                        },
                        child: Chip(
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
                                    color: Colors.black,
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
                            "title": "How to use FAA?",
                            "image": "assets/images/faaBenefits.png",

                            "desc": langState ? """1. Mix 1-2 cans of KBI sardines per 16 liters of water or a knapsack sprayer of water.

2. Water or spray on the plant in the morning or in the afternoon as a growth booster for young plants and nutritional support for fruiting vegetables and fruits. Apply once a week or once every two weeks 14 days after germination or transplanting until fruiting.

3. As a pet food supplement, mix 2 tablespoons of KBI with each meal or one tablespoon of KBI per liter of drinking water.
""" : """1. Ihalo ang 1-2 lata ng sardinas na KBI sa bawat 16 litrong tubig o isang knapsack sprayer na tubig.

2. Idilig o i-sprey sa halaman sa umaga o sa hapon bilang pampalago sa mga batang halaman at suportang pagkain sa mga namumungang gulay at prutas. Maglagay minsan sa isang linggo o minsan bawat dalawang linggo 14 na araw pagkasibol ng mga binhi o pagkalipat-tanim hanggang sa pamumunga.

3. Bilang dagdag-sustansya sa pagkain ng mga alagang hayop, maghalo ng 2 kutsarang KBI sa bawat pagkain o isang kutsara ng KBI sa kada litro ng painuming-tubig."""
                          });
                        },
                        child: Chip(
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
                                langState ? "How to use FAA" : "Paraan ng Paggamit ng FAA",
                                style: GoogleFonts.literata(
                                    color: Colors.black,
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
                            "title": "Benefits of FAA",
                            "image": "assets/images/faaBenefits.png",
                            "desc": langState? """1. Contains calcium and salt for healthy plants.
                            
2. Contains anti-pest for the plant.

3. Alternative and natural source of protein for pets.
""" : """1. May calcium at asin para sa kalusugan ng mga tanim.

2. May taglay na kontra-peste para sa halaman.

3. Alternatibo at natural na mapagkukunan ng protina para sa mga alagang hayop."""
                          });
                        },
                        child: Chip(
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
                                "Benefits of FFJ",
                                style: GoogleFonts.literata(
                                    color: Colors.black,
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
