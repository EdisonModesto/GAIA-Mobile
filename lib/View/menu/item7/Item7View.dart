import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../ViewModel/LanugageViewModel.dart';
import '../../../common/BubbleView.dart';

class Item7View extends ConsumerStatefulWidget {
  const Item7View({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _Item7ViewState();
}

class _Item7ViewState extends ConsumerState<Item7View> {

  PageController controller = PageController();

  var page = 0;

  @override
  Widget build(BuildContext context) {
    var lang = ref.watch(langProvider);
    var langState = ref.read(langProvider.notifier).state;
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/organicBG.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    onPageChanged: (index){
                      page = index;
                      setState(() {});
                    },
                    children: [
                      BubbleView(
                        title: langState ? "Healty Plant Tips" : "Mga Tip sa Malusog na Halaman",
                        desc: langState ? "Use good-quality potting soil. A good potting soil encourages healthy roots by offering a balance of optimum ventilation, nutrition, and moisture-holding capacity."
                            : "Gumamit ng magandang kalidad na potting soil. Ang magandang potting soil ay naghihikayat ng malusog na mga ugat sa pamamagitan ng pagbibigay ng balanse ng pinakamainam na bentilasyon, nutrisyon, at moisture-holding capacity.",
                        image: "assets/images/organicBG.png",
                      ),
                      BubbleView(
                        title: langState ? "Healty Plant Tips" : "Mga Tip sa Malusog na Halaman",
                        desc: langState ? "Watering your plants depends on their requirements, but it is ideal for watering them in the morning before sunlight, preferably at 6 a.m. Unless the farm is large, you can only flood water the roots in the afternoon and let the excess run out the bottom of the pot. If it is too hot, water them in the afternoon."
                        : "Ang pagdidilig sa iyong mga halaman ay depende sa kanilang mga kinakailangan, ngunit ito ay mainam para sa pagdidilig sa mga ito sa umaga bago ang sikat ng araw, mas mabuti sa 6 a.m. Maliban kung ang sakahan ay malaki, maaari mo lamang bahain ang mga ugat sa hapon at hayaang maubos ang labis sa ilalim ng paso. Kung ito ay masyadong mainit, diligan ang mga ito sa hapon.",
                        image: "assets/images/organicBG.png",
                      ),
                      BubbleView(
                        title: langState ? "Healty Plant Tips" : "Mga Tip sa Malusog na Halaman",
                        desc: langState ? "Plants must be matched to light conditions. The light requirements of plants vary. Some plants prefer the bright light provided by a south-facing window. Others thrive in the soft morning light that comes in via an east-facing window. One thing is sure: all houseplants thrive when exposed to natural light." : "Ang mga halaman ay dapat tumugma sa mga ilaw na kinakailangan. Iba-iba ang ilaw na pangangailangan ng mga halaman. Mas gusto ng ilang halaman ang maliwanag na liwanag na ibinibigay ng isang bintanang nakaharap sa timog. Ang iba ay umuunlad sa malambot na liwanag ng umaga na pumapasok sa pamamagitan ng bintanang nakaharap sa silangan. Isang bagay ang sigurado: ang lahat ng mga halaman sa bahay ay umuunlad kapag nalantad sa natural na liwanag.",
                        image: "assets/images/organicBG.png",
                      ),
                      BubbleView(
                        title: langState ? "Healty Plant Tips" : "Mga Tip sa Malusog na Halaman",
                        desc: langState ? "Enhance humidity and stop draught. Dry and draughty conditions can exist indoors. Plants should not be placed near heater vents, doors, or poorly ventilated windows. Plants can be placed on trays filled with water and layered with small pebbles to increase humidity. Alternatively, put them in naturally humid spaces like kitchens or bathrooms if there is enough light."
                        : "Pagbutihin ang kahalumigmigan at itigil ang tagtuyot. Ang tuyo at tagtuyot ay maaaring umiral sa loob ng bahay. Ang mga halaman ay hindi dapat ilagay malapit sa mga lagusan ng pampainit, mga pinto, o mga bintanang hindi maganda ang bentilasyon. Maaaring ilagay ang mga halaman sa mga tray na puno ng tubig at patong-patong ng maliliit na bato upang mapataas ang kahalumigmigan. Bilang kahalili, ilagay ang mga ito sa mga natural na mahalumigmig na espasyo tulad ng mga kusina o banyo kung may sapat na liwanag.",
                        image: "assets/images/organicBG.png",
                      ),
                      BubbleView(
                        title: langState ? "Healty Plant Tips" : "Mga Tip sa Malusog na Halaman",
                        desc: langState ? "Fertilizer depends on the size of the plant, but generally speaking, when you plant it, it needs to be in the ground. Just like when you plant vegetables, the fertilizer is already there. With a quick-release fertilizer, about once per month, or with a slow-release fertilizer, about once per season. Some gardeners like to fertilize their flowers and plants every one to two weeks with liquid-soluble plant food."
                        : "Ang pataba ay depende sa laki ng halaman, ngunit sa pangkalahatan, kapag itinanim mo ito, kailangan itong nasa lupa. Katulad ng pagtatanim mo ng gulay, nandiyan na ang pataba. Sa pamamagitan ng isang mabilis na paglabas na pataba, halos isang beses bawat buwan, o sa isang mabagal na paglabas na pataba, halos isang beses bawat panahon. Ang ilang mga hardinero ay gustong lagyan ng pataba ang kanilang mga bulaklak at halaman bawat isa hanggang dalawang linggo na may likidong natutunaw na pagkain ng halaman.",
                        image: "assets/images/organicBG.png",
                      ),
                      BubbleView(
                        title: langState ? "Healty Plant Tips" : "Mga Tip sa Malusog na Halaman",
                        desc: langState ? "The tomato is not recommended to plant during the rainy season; the tomato and eggplant are in the dry season; but, due to technology and global warming, it is no longer essential because when you are in a container, you can move it; when you are in the ground, you can cover it; therefore, the innovation value appears to be low. You can follow the planting calendar if you like and plant as long as you have the space."
                        : "Ang kamatis ay hindi inirerekomenda na itanim sa panahon ng tag-ulan; ang kamatis at talong ay nasa tag-araw; ngunit, dahil sa teknolohiya at global warming, hindi na ito esensyal dahil kapag nasa lalagyan ka, maaari mo itong ilipat; kapag ikaw ay nasa lupa, maaari mong takpan ito; samakatuwid, lumilitaw na mababa ang halaga ng pagbabago. Maaari mong sundin ang kalendaryo ng pagtatanim kung gusto mo at magtanim hangga't mayroon kang espasyo.",
                        image: "assets/images/organicBG.png",
                      ),
                      BubbleView(
                        title: langState ? "Healty Plant Tips" : "Mga Tip sa Malusog na Halaman",
                        desc: langState ? "Use good-quality potting soil. A good potting soil encourages healthy roots by offering a balance of optimum ventilation, nutrition, and moisture-holding capacity."
                        : "May mga bagong teknolohiya at bagong pananaliksik, ngunit ang pinakamahalagang bagay ay ang iyong relasyon sa halaman; hindi mo maaaring pabayaan ito at alamin kung ito ay organic o inorganic; kailangan mong magplano at bigyan ito ng layunin.",
                        image: "assets/images/organicBG.png",
                      ),
                    ],
                  ),
                ),
                DotsIndicator(
                  dotsCount: 7,
                  position: page.toDouble(),
                  decorator: const DotsDecorator(
                    color: Colors.black87, // Inactive color
                    activeColor: Colors.redAccent,
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
