import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class MenuView extends ConsumerStatefulWidget {
  const MenuView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _MenuViewState();
}

class _MenuViewState extends ConsumerState<MenuView> with SingleTickerProviderStateMixin {

  late AnimationController controller;

  var itemTitles = [
    "What is Urban Farming?",
    "Types of Urban farming",
    "Plant Calendar",
    "Organic fertilizer",
    "Soil mixtures",
    "Pests and Control",
    "Healthy plant tips",
    "Recyclable Ideas"
  ];

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Transform.translate(
                  offset: const Offset(0, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Transform.translate(
                        offset: const Offset(80, 0),
                        child: SizedBox(
                          height: 75,
                          child: Lottie.asset(
                            'assets/lottie/plantWalk.json',
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(45, 0),
                        child: SizedBox(
                          height: 75,
                          child: Lottie.asset(
                            'assets/lottie/plantWalk.json',
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, 8),
                        child: SizedBox(
                          height: 100,
                          child: Lottie.asset(
                            'assets/lottie/plantWalk.json',
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-45, 0),
                        child: SizedBox(
                          height: 75,
                          child: Lottie.asset(
                            'assets/lottie/plantWalk.json',
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-80, 0),
                        child: SizedBox(
                          height: 75,
                          child: Lottie.asset(
                            'assets/lottie/plantWalk.json',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: FadeTransition(
                  opacity: Tween<double>(begin: 0, end: 1).animate(
                    CurvedAnimation(
                      parent: controller,
                      curve: const Interval(
                        0.5,
                        1,
                        curve: Curves.ease,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "What are you willing to learn?",
                        style: GoogleFonts.clickerScript(
                          fontSize: 30
                        ),
                        maxLines: 1,
                        maxFontSize: 50,
                        minFontSize: 20,
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate(4, (index){
                                      return  Container(
                                        height: 175,
                                        margin: const EdgeInsets.only(bottom: 20),
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                context.push("/item${((index + 1) * 2)-1}");
                                              },
                                              child: Image.asset(
                                                "assets/images/menuImages/item${((index + 1) * 2)-1}.png",
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            AutoSizeText(
                                              itemTitles[((index + 1) * 2)-2],
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.literata(),
                                              maxLines: 2,
                                              maxFontSize: 26,
                                              minFontSize: 16,
                                            ),
                                          ],
                                        ),
                                      );
                                    })
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate(4, (index){
                                      return InkWell(
                                        onTap: () {
                                          context.push("/item${((index + 1) * 2)}");
                                        },
                                        child: Container(
                                          height: 175,
                                          margin: const EdgeInsets.only(bottom: 20),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                "assets/images/menuImages/item${((index + 1) * 2)}.png",
                                              ),
                                              const SizedBox(height: 10),
                                              AutoSizeText(
                                                itemTitles[((index + 1) * 2) -1 ],
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.literata(),
                                                maxLines: 2,
                                                maxFontSize: 26,
                                                minFontSize: 16,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    })
                                ),
                              ),
                            ]
                          ),
                        ),
                      ),
                      const SizedBox(height: 55),
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
