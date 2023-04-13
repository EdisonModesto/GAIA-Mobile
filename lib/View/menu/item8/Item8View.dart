import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../ViewModel/DarkViewModel.dart';
import '../../../ViewModel/LanugageViewModel.dart';
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
    var lang = ref.watch(langProvider);
    var langState = ref.read(langProvider.notifier).state;
    var dark = ref.watch(darkProvider);
    var themeState = ref.read(darkProvider.notifier).state;
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                context.pushNamed("bubble", params: {
                  "title": langState
                      ? "Recyclable Ideas"
                      : "Mga Recyclable na Ideya",
                  "desc": langState
                      ? """Recycling is transforming discarded paper, plastic, and glass into reusable items to reduce waste, landfill buildup, and pollution. This process helps to reduce the excess production of new disposable items, which frequently end up on roadways and bodies of water, causing harm to wildlife and the environment. Recycling is essential in the green movement; there are other ways to reduce pollution and garbage accumulation. Here, we will concentrate on plastic bottles like water bottles, used tires, old barrels, and more."""
                      : """Ang pag-recycle ay ginagawang muli ang mga itinapon na papel, plastik, at salamin upang mabawasan ang basura, pagtatapon ng landfill, at polusyon. Nakakatulong ang prosesong ito na bawasan ang labis na produksyon ng mga bagong disposable na bagay, na kadalasang napupunta sa mga kalsada at anyong tubig, na nagdudulot ng pinsala sa wildlife at sa kapaligiran. Ang pag-recycle ay mahalaga sa berdeng kilusan; may iba pang paraan para mabawasan ang polusyon at akumulasyon ng basura. Dito, magko-concentrate tayo sa mga plastik na bote tulad ng mga bote ng tubig, mga gamit na gulong, mga lumang bariles, at iba pa.""",
                  "image": "assets/images/recycleBG.png",
                });
              },
              child: Chip(
                backgroundColor: themeState ? AppColors().dark : Colors.white,

                avatar: Lottie.asset("assets/lottie/prefix.json",
                    height: 200, width: 200
                    //fit: BoxFit.cover,
                    ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                label: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: AutoSizeText(
                      langState
                          ? "What is Recyclable Ideas?"
                          : "Ano ang Recyclable Ideya?",
                      style: GoogleFonts.literata(
                          color: themeState ? Colors.white : AppColors().primaryColor,
                          fontWeight: FontWeight.w600,
                          ),
                      minFontSize: 0,
                      maxFontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 70),
            InkWell(
              onTap: () {
                context.push("/pageView",
                    extra: PageArguments(pageDetails: [
                      PageDetails(
                          title: langState ? "Plastic Bottles" : "Mga Plastic na Bote",
                          image: "assets/images/plasticBottle.png",
                          description:
                              langState
                              ? """Plastic bottles can be reused as gardening pots. It is straightforward and convenient to do, and you can also do it with your kids to let them know the importance of recycling and touch them on art activities. The steps are straightforward: cut the bottle into half crosswise and put holes in the bottom so the water will pass upon using it as a gardening pot. You can also paint it with non-toxic paint to make it look pleasant and artistic. """
                              : """Ang mga plastik na bote ay maaaring gamitin muli bilang mga palayok sa paghahalaman. Ito ay diretso at maginhawang gawin, at maaari mo ring gawin ito kasama ng iyong mga anak upang ipaalam sa kanila ang kahalagahan ng pag-recycle at hawakan sila sa mga aktibidad sa sining. Ang mga hakbang ay diretso: gupitin ang bote sa kalahating crosswise at maglagay ng mga butas sa ilalim upang ang tubig ay dumaan kapag ginamit ito bilang isang palayok sa paghahalaman. Maaari mo ring ipinta ito ng hindi nakakalason na pintura para maging maganda at masining ang hitsura nito."""
                      ),
                      PageDetails(
                          title: "Vertical/ Wall Gardening",
                          image: "assets/images/wallGarden.png",
                          description:
                              langState
                              ? """You can also make a vertical garden using the top portion of the plastic bottles. All you have to do is make a bracket where you will put the plastic bottles and attatched them alternately for your plants to grow wider. Do not forget to put a hole in the cap for drainage."""
                              : """Maaari ka ring gumawa ng vertical garden gamit ang tuktok na bahagi ng mga plastik na bote. Ang kailangan mo lang gawin ay gumawa ng bracket kung saan ilalagay mo ang mga plastik na bote at ikakabit ang mga ito ng salit-salit para lumaki ang iyong mga halaman. Huwag kalimutang maglagay ng butas sa takip para sa paagusan."""
                      ),
                      PageDetails(
                          title: langState ? "Old tires" : "Mga lumang gulong",
                          image: "assets/images/oldTires.png",
                          description:
                              langState
                              ? """Old tires can also be used as gardening pots. Simply stack the tires, or you can lay them flat on the ground and put soil in them. best for planting leafy vegetables and root plants. you can put paint to make it look nice and clean. """
                              : """Ang mga lumang gulong ay maaari ding gamitin bilang mga palayok sa paghahalaman. Isalansan lamang ang mga gulong, o maaari mong ilagay ang mga ito nang patag sa lupa at lagyan ng lupa ang mga ito. pinakamainam para sa pagtatanim ng mga madahong gulay at halamang ugat. Maaari kang maglagay ng pintura upang magmukhang maganda at malinis."""
                      ),
                      PageDetails(
                          title: langState ? "Old barrels" : "Mga lumang bariles",
                          image: "assets/images/oldBarrels.png",
                          description:
                              langState
                              ? """Old barrels can also be used as a vertical garden. Cut a hole on the side of it and the bottom to let it have drainage for water and fill it with soil. This can save you space, and you can plant multiple plants in a single pot. You can also put paint on it to make it look nice and clean"""
                              : """Ang mga lumang bariles ay maaari ding gamitin bilang isang vertical garden. Gumupit ng butas sa gilid nito at sa ilalim para magkaroon ng drainage para sa tubig at punuin ito ng lupa. Makakatipid ito ng espasyo, at makakapagtanim ka ng maraming halaman sa isang palayok. Maaari mo ring lagyan ng pintura ito para maging maganda at malinis"""
                      ),
                      PageDetails(
                          title: langState ? "Paint Buckets" : "Mga balde ng pintura",
                          image: "assets/images/paintBuckets.png",
                          description:
                              langState
                              ? """Paint buckets can also be used as a gardening pots. Just cut a-holes on the bottom of it and fill it with soil. The best to plant in it is marcotted fruits and fruit-bearing vegetables. You can put paint to make it look artistic."""
                              : """Ang mga balde ng pintura ay maaari ding gamitin bilang mga palayok sa paghahalaman. Gupitin lamang ang isang-butas sa ilalim nito at punuin ito ng lupa. Ang pinakamagandang itanim dito ay mga marcotted fruits at fruit-bearing vegetables. Pwede kang maglagay ng pintura para maging artistic."""
                      ),
                    ]));
              },
              child: Chip(
                backgroundColor: themeState ? AppColors().dark : Colors.white,

                avatar: Lottie.asset("assets/lottie/prefix.json",
                    height: 200, width: 200
                    //fit: BoxFit.cover,
                    ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                label: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: AutoSizeText(
                      langState
                          ? "Recyclable Ideas You Can Use"
                          : "Mga Recyclable na Ideya na Magagamit Mo",
                      style: GoogleFonts.literata(
                          color: themeState ? Colors.white : AppColors().primaryColor,
                          fontWeight: FontWeight.w600,
                      ),
                      minFontSize: 0,
                      maxFontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
