import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';

class Item2View extends ConsumerStatefulWidget {
  const Item2View({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _Item2ViewState();
}

class _Item2ViewState extends ConsumerState<Item2View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/item2BG.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){

                },
                child: Chip(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  label: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        "Backyard Gardening",
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

                },
                child: Chip(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  label: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        "Container Gardening",
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

                },
                child: Chip(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  label: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        "Hydroponics",
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
                    "title": "Vertical/Wall Farming",
                    "image": "assets/images/wallGardening.png",
                    "desc": """
                    This method is the most economical in area and space. This is suitable for buildings where the walls are exposed to direct sunlight.






SOURCE: BUREAU OF PLANT INDUSTRY"""
                  });
                },
                child: Chip(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  label: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        "Vertical/Wall Farming",
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
                    "title": "Aquaponics",
                    "image": "assets/images/aquaponics1.png",
                    "desc": "Aquaponics is a process for raising aquatic plants and animals in a recirculating environment. The term 'aquaponics' is a combination of the words 'aquaculture,' which is the practice of raising fish in limited spaces, and 'hydroponics,' which is the growing of plants in water (the growing of plants, usually in a soil-less environment). Aquaponic systems come in various sizes, from compact interior units to enormous commercial ones. They could be brackish or saltwater systems or freshwater systems."
                  });
                },
                child: Chip(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  label: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        "Aquaponics",
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
                    "title": "Rooftop Gardening",
                    "image": "assets/images/RooftopGardening.png",
                    "desc": "Rooftop gardening is a sort of urban agriculture that involves growing food on the roofs of buildings. Aside from aesthetics, rooftop gardens provide architectural enhancement, temperature control, recreational opportunities, wildlife habitats, and even a space for growing food."
                  });
                },
                child: Chip(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  label: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        "Rooftop gardening",
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
