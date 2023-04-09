import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/common/DescView.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../ViewModel/LanugageViewModel.dart';
import '../../../constants/colors.dart';
import '../../../common/PageView.dart';

class BackGardeningView extends ConsumerStatefulWidget {
  const BackGardeningView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _SubMenuViewState();
}

class _SubMenuViewState extends ConsumerState<BackGardeningView> {
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
                image: AssetImage("assets/images/containerGardening.png"),
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
                        "Container Gardening",
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
                            "title": "Container Gardening",
                            "image": "assets/images/oldBarrels.png",
                            "desc": langState ? """It also uses soil but is placed in a container like pot. It is suitable for rocky homes and poor soil conditions.






Source: Department of Agriculture""" : """Ito ay gumagamit din ng lupa ngunit nakalagay sa container tulad ng paso. Ito ay bagay sa mga tahanang mabato at hindi maganda ang kundisyon ng lupa








SOURCE: BUREAU OF PLANT INDUSTRY"""
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
                                "What is Container Gardening?",
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
                            "image": "assets/images/containerMaterials.png",
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
                                "Materials",
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
                            "desc": langState ?  """1. Create a hole the top of the bottle. Each hole is one inch apart.
2, Place the planting soil.

3. Cut two pieces of fabric one inch wide to make a wick. Insert it into the mouth of the bottle.

4. Water the lower part of the garden. Add liquid organic fertilizer such as organic concoctions or vermitea if available.

5. Plant the seed or seedling. Water it only lightly.""" : """1. Butasan ang gawing itaas ng bote. Isang pulgada ang pagitan ng bawat butas.
Ilagay ang lupang pagtataniman.

2. Gumupit ng dalawang tela na may isang pulgada ang lapad upang gawing mitsa. Ipasok ito sa bunganga ng bote.

3. Lagyan ng tubig ang ibabang bahagi ng taniman. Dagdagan ito ng likidong organikong oataba katulad ng organic concoctions o vermitea kung mayroon.

4. Itanim ang buto o punla. Diligan ito nang bahagya lamang.
""",
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
                                "Steps",
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
