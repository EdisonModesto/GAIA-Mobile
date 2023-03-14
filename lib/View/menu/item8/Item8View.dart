import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    context.pushNamed("desc", params: {
                      "title": "Plastic Bottles",
                      "image": "assets/images/plasticBottle.png",
                      "desc": """Plastic bottles can be reused as gardening pots. It is straightforward and convenient to do, and you can also do it with your kids to let them know the importance of recycling and touch them on art activities. The steps are straightforward: cut the bottle into half crosswise and put holes in the bottom so the water will pass upon using it as a gardening pot. You can also paint it with non-toxic paint to make it look pleasant and artistic. """
                    });
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
