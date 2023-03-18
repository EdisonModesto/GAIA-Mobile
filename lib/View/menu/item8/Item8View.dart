import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/PageView.dart';
import '../../../constants/colors.dart';

class Item8View extends ConsumerStatefulWidget {
  const Item8View({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _Item8ViewState();
}

class _Item8ViewState extends ConsumerState<Item8View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/recycleBG.png"),
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
                          "What is Recyclable Ideas?",
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
                                  title: "Plastic Bottles",
                                  image: "assets/images/plasticBottle.png",
                                  description: """Plastic bottles can be reused as gardening pots. It is straightforward and convenient to do, and you can also do it with your kids to let them know the importance of recycling and touch them on art activities. The steps are straightforward: cut the bottle into half crosswise and put holes in the bottom so the water will pass upon using it as a gardening pot. You can also paint it with non-toxic paint to make it look pleasant and artistic. """
                              ),
                              PageDetails(
                                  title: "Vertical/ Wall Gardening",
                                  image: "assets/images/wallGarden.png",
                                  description: """You can also make a vertical garden using the top portion of the plastic bottles. All you have to do is make a bracket where you will put the plastic bottles and attatched them alternately for your plants to grow wider. Do not forget to put a hole in the cap for drainage."""
                              ),
                              PageDetails(
                                  title: "Old tires",
                                  image: "assets/images/oldTires.png",
                                  description: """Old tires can also be used as gardening pots. Simply stack the tires, or you can lay them flat on the ground and put soil in them. best for planting leafy vegetables and root plants. you can put paint to make it look nice and clean. """
                              ),
                              PageDetails(
                                  title: "Old barrels",
                                  image: "assets/images/oldBarrels.png",
                                  description: """Old barrels can also be used as a vertical garden. Cut a hole on the side of it and the bottom to let it have drainage for water and fill it with soil. This can save you space, and you can plant multiple plants in a single pot. You can also put paint on it to make it look nice and clean"""
                              ),
                              PageDetails(
                                  title: "Paint Buckets",
                                  image: "assets/images/paintBuckets.png",
                                  description: """Paint buckets can also be used as a gardening pots. Just cut a-holes on the bottom of it and fill it with soil. The best to plant in it is marcotted fruits and fruit-bearing vegetables. You can put paint to make it look artistic."""
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
                          "Recyclable Ideas You Can Use",
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
