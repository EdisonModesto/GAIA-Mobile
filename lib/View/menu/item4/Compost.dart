import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../ViewModel/DarkViewModel.dart';
import '../../../ViewModel/LanugageViewModel.dart';
import '../../../constants/colors.dart';

class CompostView extends ConsumerStatefulWidget {
  const CompostView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _CompostViewState();
}

class _CompostViewState extends ConsumerState<CompostView> {
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
                        "Compost",
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
                            "title": "Compost",
                            "image": "assets/images/compost.png",
                            "desc": langState ? """Compost is an organic substance that can be added to soil to aid in the growth of plants. More than 30% of our garbage comprises food leftovers and yard debris, which may be composted. These materials can be composted instead of disposed of in landfills, which take up space and release the potent greenhouse gas methane."""
                                : """Ang compost ay isang organikong sangkap na maaaring idagdag sa lupa upang tumulong sa paglaki ng mga halaman. Mahigit sa 30% ng ating mga basura ay binubuo ng mga natirang pagkain at mga basura sa bakuran, na maaaring i-compost. Ang mga materyales na ito ay maaaring i-compost sa halip na itapon sa mga landfill, na kumukuha ng espasyo at naglalabas ng makapangyarihang greenhouse gas methane."""
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
                            child: Center(
                              child: Text(
                                langState ? "Whats is Compost?" : "Ano ang Compost?",
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
                            "title": "Compost Materials",
                            "image": "assets/images/compost.png",
                            "desc": langState ? """Ingredients/Materials:
                            
1. Green scrap  - kitchen waste, probably from fruits, vegetables, and eggs.

2. Brown scrap - is composed of dried leaves, twigs, bush coffee grounds, etc., from your garden.

3. Compost Bin
""" : """Mga sangkap:
1. Green scrap - basura sa kusina, marahil mula sa mga prutas, gulay, at itlog.

2. Brown scrap - ay binubuo ng mga tuyong dahon, sanga, bush coffee grounds, atbp., mula sa iyong hardin.

3. Kompost Bin"""
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
                            "title": "Compost Steps",
                            "image": "assets/images/compost.png",
                            "desc": langState ? """Step 1: Get a compost bin

Step 2: Alternately layer the brown and green material like lasagna

Step 3: Add water to allow the composting process, and wait a few months for your material to degrade. Only green and brown materials should be used, no meat.
""" : """Step 1: Kumuha ng compost bin

Step 2: Palitan ng halili ang kayumanggi at berdeng materyal tulad ng lasagna

Step 3: Magdagdag ng tubig upang bigyang-daan ang proseso ng pag-compost, at maghintay ng ilang buwan para bumagsak ang iyong materyal. Tanging berde at kayumanggi na materyales ang dapat gamitin, walang karne.

Maaari kang makakita ng mga karagdagang tutorial dito:
https://www.youtube.com/watch?v=F4AicGPEmL8"""
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
                            "title": "Use of Compost",
                            "image": "assets/images/compost.png",
                            "desc": """Compost can be use as soil amendments, seed starter,  and natural fertilizer. add it to your soil composition to make your plant healthy."""
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
                                langState ? "Use of Compost" : "Paraan ng Paggamit ng Compost",
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
