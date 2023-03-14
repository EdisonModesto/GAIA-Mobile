import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  onTap: (){},
                  child: Chip(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    label: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "What is Soil Mixtures?",
                          style: GoogleFonts.literata(
                              color: AppColors().primaryColor,
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
                      "desc": """The best mix for the flowering plant is Sandy loam is composed of 50 to 70% sand, less than 20% clay, and 10 to 50% silt or organic matter. So, if your existing soil contains 20% sand, you'll need to add enough sand up to 50%. If your soil contains 40% clay, you must add enough sand or compost to reduce that percentage.

You may see additional tutorials here: https://drive.google.com/drive/folders/1l-FK0qPhX0-Wsd3zM1rfVCpKUxMIICyJ?usp=share_link
"""
                    });
                  },
                  child: Chip(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    label: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Mixture for Fowering Plants",
                          style: GoogleFonts.literata(
                              color: AppColors().primaryColor,
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
                      "desc": """Many believe that using local soil for raised beds is the best option. This method considers the local climate and environment when growing vegetables. Begin with the basic soil mix formula: 50% compost and 50% local topsoil.

Mel's Mix, formulated by Mel Bartholomew, who popularized the Square Foot Gardening method, is the Holy Grail for most raised bed gardeners. It's mixed by volume using an easy formula consisting of
1/3 coarse horticultural vermiculite
1/3 peat moss
1/3 blended compost

You may see additional tutorials here: https://drive.google.com/drive/folders/1l-FK0qPhX0-Wsd3zM1rfVCpKUxMIICyJ?usp=share_link"""
                    });
                  },
                  child: Chip(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    label: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Mix for Vegetable Plants",
                          style: GoogleFonts.literata(
                              color: AppColors().primaryColor,
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
                      "desc": """Potting Soil Mixing Formula to make your ideal potting soil for an indoor plant,
Thoroughly combine 1 part peat or coir
1 part perlite or vermiculite
1/2 part composted bark
1/2 part worm castings
With this mix, you can grow only your indoor flower garden.

You may see additional tutorials here: https://drive.google.com/drive/folders/1l-FK0qPhX0-Wsd3zM1rfVCpKUxMIICyJ?usp=share_link"""
                    });
                  },
                  child: Chip(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    label: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Mixture for Indoor Plants",
                          style: GoogleFonts.literata(
                              color: AppColors().primaryColor,
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
