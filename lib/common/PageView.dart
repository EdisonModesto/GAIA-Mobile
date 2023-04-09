import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/common/DescView.dart';


class DescPageView extends ConsumerStatefulWidget {
  DescPageView({
    required this.pageDetails,
    Key? key,
  }) : super(key: key);

  PageArguments pageDetails;

  @override
  ConsumerState createState() => _DescPageViewState();
}

class _DescPageViewState extends ConsumerState<DescPageView> {

  final PageController _pageController = PageController();

  var page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index){
                page = index;
                setState(() {});
              },
              children: List.generate(widget.pageDetails.pageDetails.length, (index){
                return DescView(
                  title: widget.pageDetails.pageDetails[index].title,
                  image: widget.pageDetails.pageDetails[index].image,
                  desc: widget.pageDetails.pageDetails[index]!.description,
                );
              })
            ),
          ),
          DotsIndicator(
            dotsCount: widget.pageDetails.pageDetails.length,
            position: page.toDouble(),
            decorator: DotsDecorator(
              color: Colors.black87, // Inactive color
              activeColor: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}


class PageDetails{
  final String title;
  final String image;
  final String description;

  PageDetails({
    required this.title,
    required this.image,
    required this.description,
  });
}

class PageArguments{
  final List pageDetails;

  PageArguments({
    required this.pageDetails,
  });
}