import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Item7View extends ConsumerStatefulWidget {
  const Item7View({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _Item7ViewState();
}

class _Item7ViewState extends ConsumerState<Item7View> {
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
          )
      ),
    );
  }
}
