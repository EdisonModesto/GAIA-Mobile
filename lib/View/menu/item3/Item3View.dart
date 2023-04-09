import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../ViewModel/LanugageViewModel.dart';

class Item3View extends ConsumerStatefulWidget {
  const Item3View({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _Item3ViewState();
}

class _Item3ViewState extends ConsumerState<Item3View> {

  var FoodDetails = [
    ["Bitter Gourd", "Sweet Potato", "Cayote", "Eggplant", "Lettuce", "Mushroom", "Okra", "Sponge Gourd", "Chinese Cabbage", "Chili", "Tomato", "Bottle Gourd", "Chinese Long Beans", "Cabbage", "Squash", "Water Spinach"],
    ["All Season", "All Season", "Sept - Jan", "All Season", "All Season", "Oct - Feb", "All Seasons", "April - May & Sept - Nov", "All Seasons", "All Seasons", "Jan - May & Sept - Oct", "Oc t- March", "All Seasons", "Oct - Dec", "Nov - Jan", "All Seasons"],
    ["60 - 70 Days After Planting (DAP)", "110 - 130 DAP", "6 - 10 Days After Transplant", "90- 120 DAP", "30 - 45DAT", "4 - 5  DAP", " 60 - 75  DAP", "60 - 85 DAP", "25 - 30DAT", "75 DAP", "55 - 60 DAT", "90 - 100 DAP", "50 - 65 Days After Planting", "58 -90 DAP", "3 - 5 months", "30 -50  DAP"],
  ];

  var FoodDetailsTagalog = [
    ["Amplaya", "Kamote", "Sayote", "Talong", "Lettuce", "Kabute", "Okra", "Patola", "Pechay", "Sili", "Kamatis", "Upo", "Sitaw", "Repolyo", "Kalabasa", "Kangkong"],
    ["Lahat ng season", "Lahat ng season", "Sept - Jan", "Lahat ng season", "Lahat ng season", "Oct - Feb", "Lahat ng season", "April - May & Sept - Nov", "Lahat ng season", "Lahat ng season", "Jan - May & Sept - Oct", "Oct - March", "All Seasons", "Oct - Dec", "Nov - Jan", "Lahat ng season"],
    ["60 - 70 Days After Planting (DAP)", "110 - 130 DAP", "6 - 10 Days After Transplant", "90- 120 DAP", "30 - 45DAT", "4 - 5  DAP", " 60 - 75  DAP", "60 - 85 DAP", "25 - 30DAT", "75 DAP", "55 - 60 DAT", "90 - 100 DAP", "50 - 65 Days After Planting", "58 -90 DAP", "3 - 5 months", "30 -50  DAP"],
  ];



  @override
  Widget build(BuildContext context) {
    ref.watch(langProvider);
    var langState = ref.read(langProvider.notifier).state;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: AppColors().primaryColor,
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                          color: AppColors().primaryColor,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/calendar/calendar.png"),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      const SizedBox(width: 20),
                      Chip(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        label: Text(
                          langState ? "Plant Calendar" : "Kalendaryo ng Halaman",
                          style: GoogleFonts.literata(
                            color: AppColors().primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Table(
                    border: TableBorder.symmetric(
                      inside: BorderSide(
                        color: AppColors().primaryColor,
                        width: 5,
                        style: BorderStyle.solid
                      )
                    ),
                    children: [
                      TableRow(children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: AutoSizeText(
                              langState ? "Vegetables/ Crops" : "Gulay/ Pananim",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.literata(
                                color: AppColors().primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                              maxFontSize: 16,
                              minFontSize: 0,
                            ),
                          )
                        ),
                        Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Center(
                              child: AutoSizeText(
                                langState ? "Time of Planting" : "Panahon ng Pagtatanim",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.literata(
                                    color: AppColors().primaryColor,
                                    fontWeight: FontWeight.w600,
                                ),
                                maxFontSize: 16,
                                minFontSize: 0,
                              ),
                            )
                        ),
                        Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Center(
                              child: AutoSizeText(
                                "Maturity",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.literata(
                                    color: AppColors().primaryColor,
                                    fontWeight: FontWeight.w600,
                                ),
                                maxFontSize: 16,
                                minFontSize: 0,
                              ),
                            )
                        ),
                      ]),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child:  SingleChildScrollView(
                      child: Table(
                        border: TableBorder.symmetric(
                            inside: BorderSide(
                                color: AppColors().primaryColor,
                                width: 5,
                                style: BorderStyle.solid
                            )
                        ),
                        children: List.generate(16, (index) => TableRow(children: [
                          Column(
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/calendar/${index+1}.png"),
                                    fit: BoxFit.cover
                                  )
                                ),

                              ),
                              Center(
                                child: Text(
                                  langState ? FoodDetails[0][index] : FoodDetailsTagalog[0][index],
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.literata(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Center(
                                child: Text(
                                  langState ? FoodDetails[1][index] : FoodDetailsTagalog[1][index],
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.literata(
                                      color: AppColors().primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16
                                  ),
                                ),
                              )
                          ),
                          Container(
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Center(
                                child: Text(
                                  FoodDetails[2][index],
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.literata(
                                      color: AppColors().primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16
                                  ),
                                ),
                              )
                          ),
                        ]))
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),

                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(width: 20,),
                        SizedBox(
                          height: 90,
                          child: Lottie.asset(
                            'assets/lottie/brocolli.json',
                          ),
                        ),
                        SizedBox(
                          height: 90,
                          child: Lottie.asset(
                            'assets/lottie/mushroom.json',
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: OverflowBox(
                            maxHeight: 175,
                            maxWidth: 175,
                            child: SizedBox(
                              height: 400,
                              width: 300,
                              child: Transform(
                                alignment: FractionalOffset.center,
                                transform: Matrix4.rotationY(180),//.rotateY(180),
                                child: Lottie.asset(
                                  'assets/lottie/cart.json',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                ),
              ),

            ],
          ),
        )
      ),
    );
  }
}
