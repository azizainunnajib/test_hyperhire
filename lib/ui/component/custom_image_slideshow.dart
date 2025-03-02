import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_hyperhire/abstract/islide_show.dart';

class CustomImageSlideshow extends StatelessWidget {
  final ISlideShow viewModel;

  const CustomImageSlideshow({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        if (viewModel.promoImages.isNotEmpty)
          ImageSlideshow(

              /// Width of the [ImageSlideshow].
              width: double.infinity,

              /// Height of the [ImageSlideshow].
              height: 200,

              /// The page to show when first creating the [ImageSlideshow].
              initialPage: 0,

              /// The color to paint the indicator.
              indicatorColor: Colors.transparent,

              /// The color to paint behind th indicator.
              indicatorBackgroundColor: Colors.transparent,

              /// Called whenever the page in the center of the viewport changes.
              onPageChanged: (value) {
                viewModel.setSlideIndex(value);
              },

              /// Auto scroll interval.
              /// Do not auto scroll with null or 0.
              autoPlayInterval: 3000,

              /// Loops back to first slide.
              isLoop: true,

              /// The widgets to display in the [ImageSlideshow].
              /// Add the sample image file into the images folder
              children: viewModel.promoImages
                  .map((x) => Image.asset(
                        x.image,
                        fit: BoxFit.cover,
                      ))
                  .toList()
              //   [
              //   Image.asset(
              //     'assets/image_test_1.png',
              //     fit: BoxFit.cover,
              //   ),
              //   Image.asset(
              //     'assets/image_test_2.png',
              //     fit: BoxFit.cover,
              //   ),
              //   Image.asset(
              //     'assets/image_test_3.png',
              //     fit: BoxFit.cover,
              //   ),
              //   Image.asset(
              //     'assets/image_test_4.png',
              //     fit: BoxFit.cover,
              //   ),
              // ],
              ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: AnimatedSmoothIndicator(
            activeIndex: viewModel.slideIndex,
            count: viewModel.promoImages.length,
            effect: const ExpandingDotsEffect(
              activeDotColor: Colors.white,
              dotColor: Colors.white54,
              dotHeight: 4,
              dotWidth: 4,
              spacing: 5,
            ),
          ),
        )
      ],
    );
  }
}
