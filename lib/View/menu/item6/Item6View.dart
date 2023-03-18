import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/PageView.dart';
import '../../../constants/colors.dart';

class Item6View extends ConsumerStatefulWidget {
  const Item6View({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _Item6ViewState();
}

class _Item6ViewState extends ConsumerState<Item6View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/pestsBG.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: ()
                  {
                  context.push(
                      "/pageView",
                    extra: PageArguments(
                      pageDetails: [
                        PageDetails(
                            title: "Prevention",
                            image: "assets/images/pestsBG.png",
                            description: """1. Remove weak plants
They might already be sick. They will draw predators if they don't. Remove the plant and discard it far from the garden.

 2.  Build nourishing, organic soil
The best way to grow robust, healthy plants is to use natural composting techniques, mulch your soil, and top-dress it with compost or natural fertilizer.
"""
                        ),
                        PageDetails(
                            title: "Prevention",
                            image: "assets/images/pestsBG.png",
                            description: """ 3.  Rotate and interplant plants
Pest insects frequently target a specific type of plant. Pests are less likely to infest a crop when plants are mixed. A frequent strategy to prevent re-infestation of pests that have overwintered in the bed is to rotate crops yearly.

 4.  Keep plant dry
Water in the morning so that the plant has time to dry off. Plant damage from insects and fungi is encouraged by wet leaves.
"""
                        ),
                        PageDetails(
                            title: "Prevention",
                            image: "assets/images/pestsBG.png",
                            description: """  5.  Disinfect
Clean your equipment if you've been working with infected plants before proceeding to other planting spaces. This will slow down the invasion of insects.

 6.  Reducing Insect Habitat
Debris and weeds in your garden should be removed since they serve as bug breeding grounds. Use clean mulch.
"""
                        ),
                      ]
                    )
                  );
                  },
                  child: Chip(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    label: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Prevention",
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
                    context.push(
                        "/pageView",
                        extra: PageArguments(
                            pageDetails: [
                              PageDetails(
                                  title: "Ways for Controlling Diseases and Pests",
                                  image: "assets/images/pestsBG.png",
                                  description: """The best way to prevent pests and diseases is to keep plants healthy.

  - Keep your soil healthy. Healthy soil attracts beneficial insects and aids in the prevention of many plant diseases.

  - Plants with resistance. Inquire from farmers or agricultural professionals about seed varieties resistant to common pests and illnesses.
"""
                              ),
                              PageDetails(
                                  title: "Ways for Controlling Diseases and Pests",
                                  image: "assets/images/pestsBG.png",
                                  description: """The best way to prevent pests and diseases is to keep plants healthy.

  - Plant during the proper seasons. For instance, pests and illnesses frequently respond to changes in the weather, such as when it starts to rain or turns warm. By watching how each crop grows and discussing with other farmers about these tendencies, you can determine when to plant. If crops are produced earlier than usual, they may grow to be strong enough to withstand pests or diseases that appear at particular seasons. Most issues and diseases may subside if crops are planted later due to a lack of food.

"""
                              ),
                              PageDetails(
                                  title: "Ways for Controlling Diseases and Pests",
                                  image: "assets/images/pestsBG.png",
                                  description: """The best way to prevent pests and diseases is to keep plants healthy.

  - Plant a variety of crops and alter crop patterns. Bugs drawn to the plant are attracted to large areas containing that plant.

  - Water from below. When plants are watered from above, microbial contaminants in the soil can splash upon them. Additionally, moist areas like leaves and stems are favorable for the growth of diseases. Flood or drip irrigation can be used to maintain the health of plant stems and leaves.

"""
                              ),
                            ]
                        )
                    );
                  },
                  child: Chip(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    label: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Ways for Controlling Diseases and Pests",
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
                    context.push(
                        "/pageView",
                        extra: PageArguments(
                            pageDetails: [
                              PageDetails(
                                  title: "Beneficial Insects",
                                  image: "assets/images/pestsBG.png",
                                  description: """Beneficial insects are those you can purchase from shops or lure into your garden and eat hazardous insects or their larvae.

Ladybugs
These widespread insects eat scale, whiteflies, mites, and aphids. The daisy family (Compositae), tansy, or yarrow are plants that will draw them to your garden. Ladybugs can also be bought directly. 
"""
                              ),
                              PageDetails(
                                  title: "Beneficial Insects",
                                  image: "assets/images/pestsBG.png",
                                  description: """Praying mantis
Most garden pests are attracted to these huge insects. Praying mantis eggs are cultivated in the garden, where they hatch and soon mature into adults.

Lacewings
Lacewings are aggressive aphid eaters, and their larvae consume aphids and other insect pests. They prefer "composite" flowers like herbs, sunflowers, black-eyed Susans, and seeds.
"""
                              ),
                              PageDetails(
                                  title: "Beneficial Insects",
                                  image: "assets/images/pestsBG.png",
                                  description: """Hoverflies
Hover-flies are strong aphid eaters, and their larvae consume aphids and other insect pests. They, like the Lacewings, are drawn to "composite" flowers like herbs, sunflowers, black-eyed Susans, and seeds.

Roundworms
Roundworms are efficient against caterpillars, a common insect that destroys sprouts before they can develop into seedlings. Worms are also efficient against beetle and root weevil larvae.
"""
                              ),
                            ]
                        )
                    );
                  },
                  child: Chip(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    label: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Beneficial Insects",
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
                    context.push(
                        "/pageView",
                        extra: PageArguments(
                            pageDetails: [
                              PageDetails(
                                  title: "Natural Pesticides",
                                  image: "assets/images/pestsBG.png",
                                  description: """Natural pesticides for plant-eating insects:
  - Gather the plant with biopesticide properties, allow it to dry, and then powder the dried plant.
  - The powder is in water for the entire night (1 handful of powder to 1 liter of water).
  - Pour the mixture through a screen or cloth to remove any solids.
  - Mix a tiny quantity of mild soap to make the pesticide adhere to plants.
  - Spray or sprinkle the mixture on plants. To begin, try your combination on one or two plants. It may be too powerful if it looks to be damaging the plants.
"""
                              ),
                              PageDetails(
                                  title: "Natural Pesticides",
                                  image: "assets/images/pestsBG.png",
                                  description: """Natural pesticides for plant-eating insects:
  - If necessary, repeat the test after adding more water.
  - Repeat as needed and immediately after a downpour.

Natural pesticides for sap-sucking insects
  - Sap-sucking insects are destroyed by blocking their airways with a thin layer of oil or mild soap. By spraying plants with water combined with vegetable oil or mild soap like perla soap, pesticides can be used to eliminate these pests. Detergents and powerful soaps should not be used by farmers or people since they destroy plants, soil, and insects."""
                              ),
                              PageDetails(
                                  title: "Natural Pesticides",
                                  image: "assets/images/pestsBG.png",
                                  description: """Additional organic pesticides
  - Pests can be killed by spraying diluted urine on plants. 10 glasses of water should be added to 1 cup of urine. Allow it to sit for ten days in a closed container. Spray your plants with the mixture after 10 days.
  - Tobacco kills a large number of insects. 1 cup tobacco leaves or cigarette butts boiled in 5 liters of water. Strain the leaves or butts, mix with some soap, and spray on plants. Tobacco should not be used on tomatoes, potatoes, peppers, or eggplant. It will harm these plants and will not kill the majority of pests that attack them."""
                              ),
                            ]
                        )
                    );
                  },
                  child: Chip(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    label: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Natural Pesticides",
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
