import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselSliders extends StatefulWidget {
  const CarouselSliders({Key? key}) : super(key: key);

  @override
  State<CarouselSliders> createState() => _CarouselSlidersState();
}

class _CarouselSlidersState extends State<CarouselSliders> {
  int _current = 0;
  List<String> images = ["0", "1"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl:
                          "https://images.unsplash.com/photo-1590766232095-4f4daf8ca543?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1316&q=80",
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                        child: CircularProgressIndicator(
                          value: downloadProgress.progress,
                        ),
                      ),
                      fit: BoxFit.cover,
                      width: 1000,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Some Text',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: ClipRRect(
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(10)),
                  child: Stack(
                    children: [
                      CachedNetworkImage(
                        imageUrl:
                            "https://images.unsplash.com/photo-1590766232095-4f4daf8ca543?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1316&q=80",
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                            value: downloadProgress.progress,
                          ),
                        ),
                        fit: BoxFit.cover,
                        width: 1000,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'Some Text',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 7.5,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                })),
        // SizedBox(
        //   height: 10.w,
        // ),
        // Container(
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: images.map((e) {
        //       int index = images.indexOf(e);
        //       return Container(
        //         width: 8.w,
        //         height: 8.w,
        //         margin: EdgeInsets.symmetric(horizontal: 2.w),
        //         decoration: BoxDecoration(
        //           shape: BoxShape.circle,
        //           color: _current == index
        //               ? const Color.fromRGBO(67, 160, 71, 0.9)
        //               : const Color.fromRGBO(0, 0, 0, 0.4),
        //         ),
        //       );
        //     }).toList(),
        //   ),
        // )
      ],
    );
  }
}
