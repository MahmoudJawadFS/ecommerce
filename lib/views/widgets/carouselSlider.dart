import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carouselSlider extends StatefulWidget {
  const carouselSlider({super.key});
  @override
  State<StatefulWidget> createState() => _carouselSliderState();
}

class _carouselSliderState extends State<carouselSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: CarouselSlider(
            options: CarouselOptions(height: 200),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 19, 103, 206)),
                      child: Center(
                        child: Text(
                          '$i',
                          style: TextStyle(fontSize: 26.0, color: Colors.white),
                        ),
                      ));
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}




        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: imgList.asMap().entries.map((entry) {
        //     return GestureDetector(
        //       onTap: () => _controller.animateToPage(entry.key),
        //       child: Container(
        //         width: 12.0,
        //         height: 12.0,
        //         margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
        //         decoration: BoxDecoration(
        //             shape: BoxShape.circle,
        //             color: (Theme.of(context).brightness == Brightness.dark
        //                     ? Colors.white
        //                     : Colors.black)
        //                 .withOpacity(_current == entry.key ? 0.9 : 0.4)),
        //       ),
        //     );
        //   }).toList(),
        // ),


// Column(children: [
//         Expanded(
//           child: CarouselSlider(
//             items: imageSliders,
//             carouselController: _controller,
//             options: CarouselOptions(
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 aspectRatio: 2.0,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     _current = index;
//                   });
//                 }),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: imgList.asMap().entries.map((entry) {
//             return GestureDetector(
//               onTap: () => _controller.animateToPage(entry.key),
//               child: Container(
//                 width: 12.0,
//                 height: 12.0,
//                 margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//                 decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: (Theme.of(context).brightness == Brightness.dark
//                             ? Colors.white
//                             : Colors.black)
//                         .withOpacity(_current == entry.key ? 0.9 : 0.4)),
//               ),
//             );
//           }).toList(),
//         ),
//       ]),