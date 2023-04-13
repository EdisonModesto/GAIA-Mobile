import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../ViewModel/DarkViewModel.dart';
import '../../../ViewModel/LanugageViewModel.dart';
import '../../../constants/colors.dart';

class Hydrophonics extends ConsumerStatefulWidget {
  const Hydrophonics({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HydrophonicsState();
}

class _HydrophonicsState extends ConsumerState<Hydrophonics> {
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
                image: AssetImage("assets/images/hydrophonicsSub.png"),
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
                        "Hydrophonics",
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
                            "title": "Hydrophonics",
                            "image": "assets/images/whatHydro.png",
                            "desc": langState ? """Instead of soil, it uses water to provide sustenance and nutrition to the plant. This is suitable for developed areas that have little arable land. Its start-up cost may be higher.






SOURCE: DEPARTMENT OF AGRICULTURE""" : """Sa halip na lupa, ito ay gumagamit ng tubig upang magbigay ng sustanyisa at nutrisyon sa halaman. Ito ay bagay sa mga developed na lugar na kakaunti na ang lupang taniman. Maaring mas mataas ang start-up cost nito.







SOURCE: DEPARTMENT OF AGRICULTURE"""
                          });
                        },
                        child: Chip(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          backgroundColor: themeState ? AppColors().dark : Colors.white,

                          avatar: Lottie.asset(
                              "assets/lottie/prefix.json",
                              height: 200,
                              width: 200
                            //fit: BoxFit.cover,
                          ),
                          label: SizedBox(
                            child: Center(
                              child: Text(
                                "What is Hydrophonics?",
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
                          context.pushNamed("materials", params: {
                            "title": "Materials",
                            "image": "assets/images/hydroMaterials.png",
                          });
                        },
                        child: Chip(
                          backgroundColor: themeState ? AppColors().dark : Colors.white,

                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          avatar: Lottie.asset(
                              "assets/lottie/prefix.json",
                              height: 200,
                              width: 200
                            //fit: BoxFit.cover,
                          ),
                          label: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Center(
                              child: Text(
                                "Materials",
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
                            "desc": langState ? """1. Create a small hole in the bottom of the styro cups and put coconut husk or sand just enough for the seedling to stick to.

2. Mix the water and the nutrient solution or liquid fertilizer (follow the instructions on the label for the correct amount or proportion).

3. Put the water with the nutrient solution/liquid fertilizer in the basin/tub.

4.  Create a holes in the plain styro exactly the size of the styro cups to be used with twelve to twenty inches.

5.  Cover the basin with plain styro with a hole in it.

6.  Place the styro cups into the holes of the plain styro covering the basin. The styro cups should not be submerged too much in the water solution. The plant may die due to lack of air. Recommended is up to three inches deep. When the roots begin to emerge from the holes of the cups, the amount of solution can be reduced so that only two inches of the roots are soaked in it.

You may see additional tutorials here: https://drive.google.com/drive/folders/1r_jfje4_lupndImlv4Ar90cO89t9avaM?usp=share_link


SOURCE: Department of Agriculture & Quezon City University Center for Urban
 Agriculture and Innovation
""" : """1. Lagyan ng maliit na butas ang ilalim ng styro cups at ilagay ang bunot ng niyog o buhangin na katamtaman lang para makakapit ang punla.

2. Haluin ang tubig at ang nutrient solution or liquid fertilizer (sundin ang tagubulin na nakalagay sa tatak para sa tamang sukat o proporsyon).

3. Ilagay ang tubig na may nutrient solution/liquid fertilizer sa planggana/batya.

4. Butasan ang plain styro na eksakto sa sukat ng gagamiting styro cups na may labinluma hanggang dalawampung pulgada. 

5.  Takipan ang planggana ng plain styro na may butas na.

6.  Ilagay ang styro cups sa mga butas ng plain styro na nakatakip sa planggana. Hindi dapat masyado ilubog ang styro cups sa water solution. Maaring mamatay ang halaman dahil sa kakulangan ng hangin. Ang rekomendado ay hanggang tatlong pulgadang lalim. Kapag nagsimula nang lumabas ang mga ugat sa mga butas ng cups, maaari nang bawasan ang dami ng solution upang ang dalawang pulgada lang ng ugat ay nakababad dito.



SOURCE: DEPARTMENT OF AGRICULTURE"""
                          });
                        },
                        child: Chip(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          backgroundColor: themeState ? AppColors().dark : Colors.white,
                          avatar: Lottie.asset(
                              "assets/lottie/prefix.json",
                              height: 200,
                              width: 200
                            //fit: BoxFit.cover,
                          ),
                          label: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Center(
                              child: Text(
                                "Steps",
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
