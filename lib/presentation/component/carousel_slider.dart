// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
//
// class CarouselSlider extends StatelessWidget {
//   final List<String> imageList = [
//     'assets/645.png',
//     'assets/game.png',
//     'assets/liberation.png',
//   ];
//
//   CarouselSlider({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: CarouselSlider(
//             options: CarouselOptions(
//           enlargeCenterPage: true,
//           enableInfiniteScroll: false,
//           autoPlay: true,
//         ),
//             items: imageList
//             .map((e) => ClipRRect(
//                   borderRadius: BorderRadius.circular(8),
//                   child: Stack(
//                     fit: StackFit.expand,
//                     children: [
//                       Image.asset('assets/645.png'),
//                     ],
//                   ),
//                 ))
//             .toList(),
//       )),
//     );
//   }
// }
