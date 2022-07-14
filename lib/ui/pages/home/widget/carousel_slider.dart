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
                    Image.asset(
                      "assets/images/banner_2.jpg",
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(10.w),
                        child: Text(
                          'CSR Aqua Desa Ciherang Pondok',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.w,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/banner_1.jpg",
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(10.w),
                        child: Text(
                          'CSR Aqua Desa Ciherang Pondok',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.w,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 8,
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
