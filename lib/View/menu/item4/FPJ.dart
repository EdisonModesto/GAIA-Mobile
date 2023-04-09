import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../ViewModel/LanugageViewModel.dart';

class FPJ extends ConsumerStatefulWidget {
  const FPJ({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _FPJState();
}

class _FPJState extends ConsumerState<FPJ> {
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
                        "Fermented Plant Juice",
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
                            "title": "Fermented Plant Juice",
                            "image": "assets/images/vegMix.png",
                            "desc": langState ? """Fermented plant juice (FPJ) is made from the juice of the plant's fermented leaves, sprouts, and stems. It comes from chlorophyll (the reason why the plant is green) and growth hormone that helps the growth and development of the crop. It is essential to select plants that grow quickly (such as bananas, kangkong, sweet potatoes, and duckweed) in the production of Fermented Plant Juice (FPJ). It is better if the materials used are from the stems and leaves of the plant it will be used for.



SOURCE: DEPARTMENT OF AGRICULTURE""" : """Ang katas ng burong halaman o fermented plant juice (FPJ) ay galing sa katas ng binurong dahon, pasibol, at suloy ng halaman. Pinanggagalingan ito ng chlorophyll (dahilan  kaya maberde ang halaman) at growth hormone na tumutulong sa paglaki at paglago ng pananim. Importanteng pimupili ng mga halamang mabilis lumaki (tulad ng saging, kangkong, kamote, duck weed) sa paggawa ng Fermented Plant Juice (FPJ). Mas maganda kung gagamiting materyales ay mula sa mga sulot at dahon ng halamang paggagamitan nito.



SOURCE: DEPARTMENT OF AGRICULTURE"""
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
                                langState ? "What is Fermented Fruit Juice?" : "Ano ang Fermented Fruit Juice?",
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
                            "image": "assets/images/fpjMaterials.png",
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
                                langState ? "Materials" : "Materyales",
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
                            "desc": langState ? """1. Cut a shoot from the sap of a banana, sweet potato, water spinach, malabar spinach or bamboo shoots.

2. Chop 2 kilos of molasses into small pieces.

3. Place on a earthen jar or food grade plastic container and place a large stone on top so that they sink.

4. The next day, remove the stone and cover the pan with clean paper or plastic and tie. Place the jar in a cool and shady place. Fermentation will be completed in 7 days.

5. It will have 2.5 liters of broth if banana sap is used.

6. Spray on leaves and soil. It can also be consumed by human beings. It helps to multiply the indigenous microorganisms (IMO).

You may see additional tutorials here: https://drive.google.com/drive/folders/1RfERvI19lUUoXFDrNXXVEe3fwNtGZNQ_?usp=share_link

 Department of Agriculture & Quezon City University Center for Urban
 Agriculture and Innovation
""" : """1. Pumutol ng saha ng saba ng saging, talbos ng kamote, kangkong, alugbati o labong.

2. Gayatin ng maliliit ang 2 kilong molasses.

3. Ilagay sa isang tapayan at lagyan ng isang malaking bato sa ibabaw upang ang mga ito ay lumubog.

4. Kinabukasan, tanggalin ang bato at lakipan ang tapayan ng malinis na papel o plastik at talian. Ilagay ang mga tapayan sa isang malamig at malilim na lugar. Ang fermentation ay matatapos ng 7 araw.

5. Ito ay magkakaroon ng 2.5 litro ng sabaw kung saha ng saing ang gagamitin.

6. I-sprey sa dahon at lupa. Maaari rin itong inumin ng tao. Tinutulungan nito paramihin ang indigenous microorganisms (IMO). 

SOURCE: DEPARTMENT OF AGRICULTURE"""
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
                          context.pushNamed("steps", params: {
                            "title": "How to use FPJ?",
                            "desc": langState? """1. Mix 2 tablespoons FFJ or 20 ml in 1 liter of water or 2 cans of sardines per 16 liters of water.

2. Spray on plants in the morning or in the afternoon during flowering and bearing fruit. Apply once a week or once every two weeks from flowering to fruiting.

3. Add the same ratio of Indigenous Microorganisms (IMO) to the seasoned FFJ and use it to spray plants during the fruiting season to sweeten the fruit.

4. It can also be used for pets. Mix 1 tablespoon of FFJ with the drinking water of the cared animal, especially during the time of illness, to speed up recovery from illness and fatigue.

SOURCE: Department of Agriculture 
""" : """1. Ihalo ang 1-2 kutsarang FPJ sa 1 litrong tubig o 1-2 lata ng sardinas sa bawat 16 litrong tubig.

2. I-sprey tuwing ika-10 araw habang papalaki hanggang sa magsimulang mamunga ang halaman.

3. Maaaring gamitin ito kasabay ng iba pang mga katas.

4. Ibabad sa katas ang binhi/buto ng 2 hanggang 4 oras bago itanim para maging malakas at mapabilis ang pagsibol ng buto.

5. Ibabad ang punla ng 30 minuto hanggang 2 oras bago maglipat-tanim para mabigyan ito ng kinakailangang growth harmone at mapalakas laban sa stress at pesting mirobiyo.


SOURCE: DEPARTMENT OF AGRICULTURE"""
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
                                langState ? "How to use FPJ" : "Paraan ng Paggamit ng FPJ",
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
