
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomepageBannerWIdget extends StatefulWidget {
   HomepageBannerWIdget({Key? key}) : super(key: key);

  @override
  State<HomepageBannerWIdget> createState() => _HomepageBannerWIdgetState();
}

class _HomepageBannerWIdgetState extends State<HomepageBannerWIdget> with TickerProviderStateMixin{
  int _currentIndex = 0;
  List<String> images=[
    "assets/images/slide2.jpg",
    "assets/images/slide1.jpg",
    "assets/images/slide3.jpg",

  ];

  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return
    Stack(
      children: [
        CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (context, index, realIndex) {
            return GestureDetector(
              child: Padding(
                padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom:20,top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: GradientBoxBorder(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff101010),
                          Color(0xff666666),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      width: 0,
                    ),
                    image: DecorationImage(
                      image:AssetImage("${images[index]}",),
                        fit: BoxFit.cover
                    )
                  ),
                ),
              ),
            );
          },
          carouselController: _controller,
          options: CarouselOptions(
            enlargeFactor: 1.0,
            height: MediaQuery.of(context).size.height*.2,
            autoPlay: true,
            aspectRatio: 1 / 2,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        Positioned(
          bottom: 0, left: 0, right: 0,
          child: Center(
            child: AnimatedSmoothIndicator(
              activeIndex: _currentIndex,
              count:  images.length,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.white,
                dotHeight: 8,
                dotWidth: 8,
              ),
              onDotClicked: (index) {
                _controller.animateToPage(index);
              },
            ),
          ),
        )

      ],
    );
  }
}
