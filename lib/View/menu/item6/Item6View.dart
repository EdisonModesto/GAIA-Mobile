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
                            title: langState ? "Prevention" : "Pagsawata",
                            image: "assets/images/pestsBG.png",
                            description: langState ? """1. Remove weak plants
They might already be sick. They will draw predators if they don't. Remove the plant and discard it far from the garden.

2.  Build nourishing, organic soil
The best way to grow robust, healthy plants is to use natural composting techniques, mulch your soil, and top-dress it with compost or natural fertilizer.
""" : """1. Tanggalin ang mahihinang halaman
Alisin ang halaman at itapon sa malayo sa hardin.

2.  Bumuo ng masustansiyang, organikong lupa
Ang pinakamahusay na paraan upang lumago ang matatag at malusog na mga halaman ay ang paggamit ng mga natural na pamamaraan ng pag-compost, mulch ang iyong lupa, at lagyan ito ng compost o natural na pataba.
"""
                        ),
                        PageDetails(
                            title: langState ? "Prevention" : "Pagsawata",
                            image: "assets/images/pestsBG.png",
                            description: langState ? """3.  Rotate and interplant plants
Pest insects frequently target a specific type of plant. Pests are less likely to infest a crop when plants are mixed. A frequent strategy to prevent re-infestation of pests that have overwintered in the bed is to rotate crops yearly.

4.  Keep plant dry
Water in the morning so that the plant has time to dry off. Plant damage from insects and fungi is encouraged by wet leaves.
""" : """3.  I-rotate at i-interplant ang mga halaman
Ang mga insektong peste ay madalas na nagta-target ng isang partikular na uri ng halaman. Ang mga peste ay mas mababa ang posibilidad na makapinsala sa isang pananim kapag pinaghalo ang mga halaman. Ang isang madalas na diskarte upang maiwasan ang muling pag-infestation ng mga peste na nag-overwintered sa kama ay ang pag-ikot ng mga pananim taun-taon.

4.  Panatilihing tuyo ang halaman
Tubig sa umaga upang ang halaman ay may oras na matuyo. Ang pinsala sa halaman mula sa mga insekto at fungi ay hinihikayat ng mga basang dahon.
"""
                        ),
                        PageDetails(
                            title: langState ? "Prevention" : "Pagsawata",
                            image: "assets/images/pestsBG.png",
                            description: langState ? """5.  Disinfect
Clean your equipment if you've been working with infected plants before proceeding to other planting spaces. This will slow down the invasion of insects.

6.  Reducing Insect Habitat
Debris and weeds in your garden should be removed since they serve as bug breeding grounds. Use clean mulch.
""" : """5.  Disimpektahin
Linisin ang iyong kagamitan kung nagtatrabaho ka sa mga infected na halaman bago magpatuloy sa iba pang mga lugar ng pagtatanim. Ito ay magpapabagal sa pagsalakay ng mga insekto.

6.  Pagbawas ng Insect Habitat
Dapat tanggalin ang mga labi at mga damo sa iyong hardin dahil nagsisilbi itong mga lugar ng pag-aanak ng bug. Gumamit ng malinis na malts.
"""
                        ),
                      ]
                    )
                  );
                  },
                  child: Chip(
                    backgroundColor: themeState ? AppColors().dark : Colors.white,

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
                          langState ? "Prevention" : "Pagsawata",
                          style: GoogleFonts.literata(
                              color: themeState ? Colors.white : AppColors().primaryColor,
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
                                  title: langState ? "Ways for Controlling Diseases and Pests" : "Mga paraan ng pagkontrol sa mga peste",
                                  image: "assets/images/pestsBG.png",
                                  description: langState ? """The best way to prevent pests and diseases is to keep plants healthy.

  - Keep your soil healthy. Healthy soil attracts beneficial insects and aids in the prevention of many plant diseases.

  - Plants with resistance. Inquire from farmers or agricultural professionals about seed varieties resistant to common pests and illnesses.
""" : """Ang pinakamahusay na paraan upang maiwasan ang mga peste at sakit ay ang panatilihing malusog ang mga halaman.

  -Panatilihing malusog ang iyong lupa. Ang malusog na lupa ay umaakit ng mga kapaki-pakinabang na insekto at tumutulong sa pag-iwas sa maraming sakit ng halaman.

  -Mga halaman na may resistensya. Magtanong sa mga magsasaka o mga propesyonal sa agrikultura tungkol sa mga uri ng binhi na lumalaban sa mga karaniwang peste at sakit."""
                              ),
                              PageDetails(
                                  title: langState ? "Ways for Controlling Diseases and Pests" : "Mga paraan ng pagkontrol sa mga peste",
                                  image: "assets/images/pestsBG.png",
                                  description:langState ? """The best way to prevent pests and diseases is to keep plants healthy.

  - Plant during the proper seasons. For instance, pests and illnesses frequently respond to changes in the weather, such as when it starts to rain or turns warm. By watching how each crop grows and discussing with other farmers about these tendencies, you can determine when to plant. If crops are produced earlier than usual, they may grow to be strong enough to withstand pests or diseases that appear at particular seasons. Most issues and diseases may subside if crops are planted later due to a lack of food.
""" : """   - Magtanim sa tamang panahon. Halimbawa, ang mga peste at sakit ay madalas na tumutugon sa mga pagbabago sa panahon, tulad ng kapag umuulan o nagiging mainit. Sa pamamagitan ng panonood kung paano lumalaki ang bawat pananim at pakikipag-usap sa ibang mga magsasaka tungkol sa mga tendensiyang ito, matutukoy mo kung kailan magtatanim. Kung ang mga pananim ay ginawa nang mas maaga kaysa sa karaniwan, maaaring lumaki ang mga ito upang maging sapat na malakas upang mapaglabanan ang mga peste o sakit na lumilitaw sa mga partikular na panahon. Karamihan sa mga isyu at sakit ay maaaring humupa kung ang mga pananim ay itinanim sa ibang pagkakataon dahil sa kakulangan ng pagkain."""
                              ),
                              PageDetails(
                                  title: langState ? "Ways for Controlling Diseases and Pests" : "Mga paraan ng pagkontrol sa mga peste",
                                  image: "assets/images/pestsBG.png",
                                  description: langState ? """The best way to prevent pests and diseases is to keep plants healthy.

  - Plant a variety of crops and alter crop patterns. Bugs drawn to the plant are attracted to large areas containing that plant.

  - Water from below. When plants are watered from above, microbial contaminants in the soil can splash upon them. Additionally, moist areas like leaves and stems are favorable for the growth of diseases. Flood or drip irrigation can be used to maintain the health of plant stems and leaves.

""" : """   - Diligan ito mula sa ibaba. Kapag ang mga halaman ay dinidiligan mula sa itaas, ang mga microbial contaminants sa lupa ay maaaring tumalsik sa kanila. Bilang karagdagan, ang mga basa-basa na lugar tulad ng mga dahon at tangkay ay paborable para sa paglaki ng mga sakit. Maaaring gamitin ang baha o drip irrigation upang mapanatili ang kalusugan ng mga tangkay at dahon ng halaman."""
                              ),
                            ]
                        )
                    );
                  },
                  child: Chip(
                    backgroundColor: themeState ? AppColors().dark : Colors.white,

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
                        child: AutoSizeText(
                          langState ? "Ways for Controlling Diseases and Pests" : "Mga paraan ng pagkontrol sa mga peste",
                          style: GoogleFonts.literata(
                              color: themeState ? Colors.white : AppColors().primaryColor,
                              fontWeight: FontWeight.w600,
                             // fontSize: 18
                          ),
                          minFontSize: 0,
                          maxFontSize: 18,
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
                                  description: langState?"""Beneficial insects are those you can purchase from shops or lure into your garden and eat hazardous insects or their larvae.

• 𝗟𝗮𝗱𝘆𝗯𝘂𝗴𝘀
These widespread insects eat scale, whiteflies, mites, and aphids. The daisy family (Compositae), tansy, or yarrow are plants that will draw them to your garden. Ladybugs can also be bought directly. 
""" : """Ang mga nakabubuting insekto ay ang mga maaari mong bilhin sa mga tindahan o maakit sa iyong hardin upang kumain ng mapanganib na mga insekto o ang kanilang mga bulate.

• 𝗟𝗮𝗱𝘆𝗯𝘂𝗴𝘀
Ito ay mga insekto na kumakain ng mga scale, whiteflies, mites, at aphids. Ang mga halaman tulad ng daisy family (Compositae), tansy, o yarrow ay mga halaman na magdudulot ng kanilang pagdami sa iyong hardin. Maaari rin silang direktang mabili.
"""
                              ),
                              PageDetails(
                                  title: "Beneficial Insects",
                                  image: "assets/images/pestsBG.png",
                                  description: langState ? """• 𝗣𝗿𝗮𝘆𝗶𝗻𝗴 𝗺𝗮𝗻𝘁𝗶𝘀
Most garden pests are attracted to these huge insects. Praying mantis eggs are cultivated in the garden, where they hatch and soon mature into adults.

• 𝗟𝗮𝗰𝗲𝘄𝗶𝗻𝗴𝘀
Lacewings are aggressive aphid eaters, and their larvae consume aphids and other insect pests. They prefer "composite" flowers like herbs, sunflowers, black-eyed Susans, and seeds.
""" : """• 𝗣𝗿𝗮𝘆𝗶𝗻𝗴 𝗺𝗮𝗻𝘁𝗶𝘀
Karamihan sa mga peste sa hardin ay naaakit sa mga malalaking insektong ito. Ang mga itlog ng praying mantis ay itinatanim sa hardin, kung saan sila'y mabubuo at magiging adult sa madaling panahon.

• 𝗟𝗮𝗰𝗲𝘄𝗶𝗻𝗴𝘀
Mga agresibong kumain ng aphid ang mga lacewings at ang kanilang mga larvae ay kumakain ng aphids at iba pang mga peste sa insekto. Sila ay mas nangunguna sa mga bulaklak na "composite" tulad ng mga halaman, sunflowers, black-eyed Susans, at mga buto.
"""
                              ),
                              PageDetails(
                                  title: "Beneficial Insects",
                                  image: "assets/images/pestsBG.png",
                                  description: langState? """• 𝗛𝗼𝘃𝗲𝗿𝗳𝗹𝗶𝗲𝘀
Hover-flies are strong aphid eaters, and their larvae consume aphids and other insect pests. They, like the Lacewings, are drawn to "composite" flowers like herbs, sunflowers, black-eyed Susans, and seeds.

• 𝗥𝗼𝘂𝗻𝗱𝘄𝗼𝗿𝗺𝘀
Roundworms are efficient against caterpillars, a common insect that destroys sprouts before they can develop into seedlings. Worms are also efficient against beetle and root weevil larvae.
""" : """• 𝗛𝗼𝘃𝗲𝗿𝗳𝗹𝗶𝗲𝘀
Ang mga hoverflies ay malakas na kumain ng aphids at ang kanilang mga larvae ay kumakain din ng mga aphids at iba pang mga peste sa insekto. Tulad ng mga Lacewings, sila ay nahuhumaling sa mga bulaklak na "composite" tulad ng mga halaman, sunflowers, black-eyed Susans, at mga buto.

• 𝗥𝗼𝘂𝗻𝗱𝘄𝗼𝗿𝗺𝘀
Ang mga roundworms ay mabisa laban sa mga caterpillar, isang karaniwang insekto na sumisira sa mga binhi bago pa man ito mag-develop bilang seedlings. Ang mga worm ay rin mabisa laban sa mga larvae ng beetle at root weevil.
"""

                              ),
                            ]
                        )
                    );
                  },
                  child: Chip(
                    backgroundColor: themeState ? AppColors().dark : Colors.white,

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
                        child: AutoSizeText(
                          langState ? "Beneficial Insects" : "Kapaki-pakinabang na mga Insekto",
                          style: GoogleFonts.literata(
                              color: themeState? Colors.white : AppColors().primaryColor,
                              fontWeight: FontWeight.w600,
                             // fontSize: 18
                          ),
                          minFontSize: 0,
                          maxFontSize: 18,
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
                                  title: langState ? "Natural Pesticides" : "Likas na mga Pestisidyo",
                                  image: "assets/images/pestsBG.png",
                                  description: langState ? """Natural pesticides for plant-eating insects:
  - Gather the plant with biopesticide properties, allow it to dry, and then powder the dried plant.
  - The powder is in water for the entire night (1 handful of powder to 1 liter of water).
  - Pour the mixture through a screen or cloth to remove any solids.
  - Mix a tiny quantity of mild soap to make the pesticide adhere to plants.
  - Spray or sprinkle the mixture on plants. To begin, try your combination on one or two plants. It may be too powerful if it looks to be damaging the plants.
""" : """Mga likas na pestisidyo para sa mga insektong kumakain ng halaman:
  - Ipunin ang halaman na gusto mong gamitin, hayaang matuyo, at pagkatapos ay gawin itong pulbos sa pinatuyong halaman.
  - Ang pulbos ay nasa tubig para sa buong gabi (1 dakot ng pulbos hanggang 1 litro ng tubig).
  - Ibuhos ang pinaghalong sa pamamagitan ng isang screen o tela upang maalis ang anumang mga solido.
  - Paghaluin ang isang maliit na dami ng banayad na sabon upang madikit ang pestisidyo sa mga halaman.
  - I-spray o iwiwisik ang halo sa mga halaman. Upang magsimula, subukan ang iyong kumbinasyon sa isa o dalawang halaman. Maaaring ito ay masyadong malakas kung mukhang nakakasira ito sa mga halaman.
"""
                              ),
                              PageDetails(
                                  title: langState ? "Natural Pesticides" : "Likas na mga Pestisidyo",
                                  image: "assets/images/pestsBG.png",
                                  description: langState ? """Natural pesticides for plant-eating insects:
  - If necessary, repeat the test after adding more water.
  - Repeat as needed and immediately after a downpour.

Natural pesticides for sap-sucking insects
  - Sap-sucking insects are destroyed by blocking their airways with a thin layer of oil or mild soap. By spraying plants with water combined with vegetable oil or mild soap like perla soap, pesticides can be used to eliminate these pests. Detergents and powerful soaps should not be used by farmers or people since they destroy plants, soil, and insects."""
                              : """   - Kung kinakailangan, ulitin ang mga hakbang pagkatapos magdagdag ng higit pang tubig.

Mga likas na pestisidyo para sa mga insektong sumisipsip ng dagta:
  - Ang mga insektong sumisipsip ng dagta ay sinisira sa pamamagitan ng pagharang sa kanilang mga daanan ng hangin gamit ang isang manipis na layer ng langis o banayad na sabon. Sa pamamagitan ng pag-spray ng mga halaman ng tubig na sinamahan ng langis ng gulay o banayad na sabon, maaaring gamitin ang mga pestisidyo upang maalis ang mga peste na ito. Ang mga detergent at malalakas na sabon ay hindi dapat gamitin ng mga magsasaka o mga tao dahil sinisira nila ang mga halaman, lupa, at mga insekto."""

                              ),
                              PageDetails(
                                  title: langState ? "Natural Pesticides" : "Likas na mga Pestisidyo",
                                  image: "assets/images/pestsBG.png",
                                  description: langState? """Additional organic pesticides
  - Pests can be killed by spraying diluted urine on plants. 10 glasses of water should be added to 1 cup of urine. Allow it to sit for ten days in a closed container. Spray your plants with the mixture after 10 days.
  - Tobacco kills a large number of insects. 1 cup tobacco leaves or cigarette butts boiled in 5 liters of water. Strain the leaves or butts, mix with some soap, and spray on plants. Tobacco should not be used on tomatoes, potatoes, peppers, or eggplant. It will harm these plants and will not kill the majority of pests that attack them."""
                              : """Karagdagang mga organikong pestisidyo:
  - Maaaring patayin ang mga peste sa pamamagitan ng pag-spray ng diluted na ihi sa mga halaman. 10 basong tubig ang dapat idagdag sa 1 tasa ng ihi. Pahintulutan itong umupo sa loob ng sampung araw sa isang saradong lalagyan. I-spray ang iyong mga halaman sa pinaghalong pagkatapos ng 10 araw.
  - Ang tabako ay pumapatay ng malaking bilang ng mga insekto. 1 tasang dahon ng tabako o upos ng sigarilyo na pinakuluan sa 5 litro ng tubig. Salain ang mga dahon o butts, ihalo sa ilang sabon, at i-spray sa mga halaman. Ang tabako ay hindi dapat gamitin sa mga kamatis, patatas, paminta, o talong. Mapipinsala nito ang mga halaman at hindi papatayin ang karamihan ng mga peste na umaatake sa kanila."""
                              ),
                            ]
                        )
                    );
                  },
                  child: Chip(
                    backgroundColor: themeState ? AppColors().dark : Colors.white,

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
                        child: AutoSizeText(
                          langState ? "Natural Pesticides" : "Likas na mga Pestisidyo",
                          style: GoogleFonts.literata(
                              color: themeState ? Colors.white : AppColors().primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 18
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
          )
      ),
    );
  }
}
