import 'package:app_color/app_color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/widgets.dart';
import 'package:flutter_ott/index.dart';

class MainCarousel extends StatelessWidget {
  final List<MainCarouselInfo> items;

  const MainCarousel({
    super.key,
    this.items = const [],
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (context, index, realIndex) {
        var item = items[index];
        return ImageView(
          width: double.infinity,
          image: item.photoUrl,
          background: Colors.grey.t50,
          borderRadius: 24,
          scaleType: BoxFit.cover,
        );
      },
      options: CarouselOptions(
        aspectRatio: 9 / 12,
        viewportFraction: 0.85,
        enlargeCenterPage: true,
        enlargeFactor: 0.18,
        autoPlay: true,
      ),
    );
  }
}

class MainCarouselInfo {
  final String photoUrl;

  const MainCarouselInfo({
    this.photoUrl = "",
  });

  static List<MainCarouselInfo> get demo {
    return [
      const MainCarouselInfo(
        photoUrl: DemoPhotoUrls.img1,
      ),
      const MainCarouselInfo(
        photoUrl: DemoPhotoUrls.img2,
      ),
      const MainCarouselInfo(
        photoUrl: DemoPhotoUrls.img3,
      ),
      const MainCarouselInfo(
        photoUrl: DemoPhotoUrls.img4,
      ),
      const MainCarouselInfo(
        photoUrl: DemoPhotoUrls.img5,
      ),
      const MainCarouselInfo(
        photoUrl: DemoPhotoUrls.img6,
      ),
      const MainCarouselInfo(
        photoUrl: DemoPhotoUrls.img7,
      ),
      const MainCarouselInfo(
        photoUrl: DemoPhotoUrls.img8,
      ),
      const MainCarouselInfo(
        photoUrl: DemoPhotoUrls.img9,
      ),
      const MainCarouselInfo(
        photoUrl: DemoPhotoUrls.img10,
      ),
    ];
  }
}
