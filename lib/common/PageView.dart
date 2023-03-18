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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: List.generate(widget.pageDetails.pageDetails.length, (index){
          return DescView(
            title: widget.pageDetails.pageDetails[index].title,
            image: widget.pageDetails.pageDetails[index].image,
            desc: widget.pageDetails.pageDetails[index]!.description,
          );
        })
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