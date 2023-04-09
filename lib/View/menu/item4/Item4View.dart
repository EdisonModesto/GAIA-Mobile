import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";
import "package:google_fonts/google_fonts.dart";
import "package:lottie/lottie.dart";

import "../../../constants/colors.dart";

class Item4View extends ConsumerStatefulWidget {
  const Item4View({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _Item4ViewState();
}

class _Item4ViewState extends ConsumerState<Item4View> {
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
                  onTap: (){
                    context.push("/FFJ");
                  },
                  child: Chip(
                    avatar: Lottie.asset(
                        "assets/lottie/prefix.json",
                        height: 200,
                        width: 200
                      //fit: BoxFit.cover,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    label: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Fermented Fruit Juice (FFJ)",
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
                    context.push("/FAA");
                  },
                  child: Chip(
                    avatar: Lottie.asset(
                        "assets/lottie/prefix.json",
                        height: 200,
                        width: 200
                      //fit: BoxFit.cover,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    label: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Fish Amino Acid ( FAA)",
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
                    context.push("/FPJ");
                  },
                  child: Chip(
                    avatar: Lottie.asset(
                        "assets/lottie/prefix.json",
                        height: 200,
                        width: 200
                      //fit: BoxFit.cover,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    label: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Fermented Plant Juice (FPJ)",
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
                    context.push("/EggShells");
                  },
                  child: Chip(
                    avatar: Lottie.asset(
                        "assets/lottie/prefix.json",
                        height: 200,
                        width: 200
                      //fit: BoxFit.cover,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    label: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Egg shell (Calphos)",
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
                    context.push("/compost");
                  },
                  child: Chip(
                    avatar: Lottie.asset(
                        "assets/lottie/prefix.json",
                        height: 200,
                        width: 200
                      //fit: BoxFit.cover,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    label: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Compost",
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
