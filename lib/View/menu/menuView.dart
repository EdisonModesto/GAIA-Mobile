import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuView extends ConsumerStatefulWidget {
  const MenuView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _MenuViewState();
}

class _MenuViewState extends ConsumerState<MenuView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/menuBG.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              AutoSizeText(
                "Hello, what are you willing to learn?",
                style: GoogleFonts.literata(
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 50,
                minFontSize: 20,
              ),
              const SizedBox(height: 20),

            ],
          )
        ),
      ),
    );
  }
}
