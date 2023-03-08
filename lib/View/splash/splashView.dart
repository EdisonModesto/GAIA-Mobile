import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";
import "package:google_fonts/google_fonts.dart";

class SplashView extends ConsumerStatefulWidget {
  const SplashView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _SplashLogoState();
}

class _SplashLogoState extends ConsumerState<SplashView> with SingleTickerProviderStateMixin {

  late AnimationController controller;

  int currentStep = 0;

  Future<void> startTimer() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      currentStep = 1;
    });
    await Future.delayed(const Duration(seconds: 3));
    context.go("/Menu");
  }


  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      startTimer();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          child: currentStep == 0 ? FadeTransition(
              opacity: Tween<double>(begin: 0, end: 1).animate(
                CurvedAnimation(
                  parent: controller,
                  curve: const Interval(0, 0.5, curve: Curves.easeIn),
                ),
              ),
              child: Center(
                  child: Image.asset(
                    "assets/images/gaia_logo.png",
                    width: MediaQuery.of(context).size.width,
                  )
              )
          ) : Visibility(
            visible: currentStep == 1,
            child: FadeTransition(
                opacity: Tween<double>(begin: 0, end: 1).animate(
                  CurvedAnimation(
                    parent: controller,
                    curve: const Interval(0, 0.5, curve: Curves.easeIn),
                  ),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/splashBG.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: GoogleFonts.literata(
                          fontSize: 82,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "What are you\nwilling to learn?",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.literata(
                            fontSize: 42,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                )
            ),
          )
        )
      ),
    );
  }
}

