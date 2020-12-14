// import 'package:flutter/material.dart';
// import 'package:moto_kerala/Constants/Colors/CColor.dart';
// import 'package:moto_kerala/Constants/SizeConfig/SizeConfig.dart';

// class CustomBottomAppbar extends StatefulWidget {
//   final tabController;
//   CustomBottomAppbar({@required this.tabController});
//   @override
//   _CustomBottomAppbarState createState() =>
//       _CustomBottomAppbarState(cController: tabController);
// }

// class _CustomBottomAppbarState extends State<CustomBottomAppbar> {
//   final ccolor = CColor();
//   final cController;
//   _CustomBottomAppbarState({@required this.cController});
//   @override
//   Widget build(BuildContext context) {
//     print(SizeConfig.screenWidth);
//     return BottomAppBar(
//       child: Stack(
//         children: [
//           TabBar(
//             controller: cController,
//             labelColor: ccolor.btmAppbar,
//             labelPadding: EdgeInsets.symmetric(horizontal: 2),
//             labelStyle: TextStyle(fontSize: SizeConfig.screenHeight * 0.016),
//             tabs: [
//               Tab(
//                 text: "CATEGORY",
//                 icon: Icon(
//                   Icons.bookmark_border,
//                   color: ccolor.btmAppbar,
//                 ),
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.search,
//                   color: ccolor.btmAppbar,
//                 ),
//                 text: "SEARCH",
//               ),
//               Spacer(),
//               Tab(
//                 icon: Icon(
//                   Icons.chat_bubble_outline,
//                   color: ccolor.btmAppbar,
//                 ),
//                 text: "LEADS",
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.person_outline,
//                   color: ccolor.btmAppbar,
//                 ),
//                 text: "PROFILE",
//               ),
//             ],
//           ),
//           Positioned(
//             left: (SizeConfig.screenWidth * (2 / 5)),
//             top: (SizeConfig.screenHeight * (1 / 20)) + (SizeConfig.screenWidth/36),
//             child: ClipPath(
//               clipper: CustomHalfCircleClipper(),
//               child: Container(
//                 width: SizeConfig.screenWidth / 5,
//                 height: SizeConfig.screenWidth / 4,
//                 decoration: BoxDecoration(
//                     gradient: RadialGradient(center: Alignment.center, stops: [
//                       0.3,
//                       0.5,
//                     ], colors: [
//                       Colors.grey[100],
//                       Colors.grey[200],
//                     ]),
//                     borderRadius:
//                         BorderRadius.circular(SizeConfig.screenWidth / 6)),
//               ),
//             ),
//           ),
//           Positioned(
//             left: (SizeConfig.screenWidth * (2 / 5)) +
//                 ((SizeConfig.screenWidth / 6.008) / 9),
//             top: (SizeConfig.screenHeight * (1 / 20)) +
//                 ((SizeConfig.screenWidth / 6.008) / 4.2),
//             child: ClipPath(
//               clipper: CustomHalfCircleClipper(),
//               child: Container(
//                 width: SizeConfig.screenWidth / 6.008,
//                 height: SizeConfig.screenWidth / 6.008,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius:
//                         BorderRadius.circular(SizeConfig.screenWidth / 6.008)),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class CustomHalfCircleClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final Path path = new Path();
//     path.lineTo(0.0, size.height / 2);
//     path.lineTo(size.width, size.height / 2);
//     path.lineTo(size.width, 0);
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }

import 'package:flutter/material.dart';
import 'package:moto_kerala/Constants/Colors/CColor.dart';
import 'package:moto_kerala/Constants/SizeConfig/SizeConfig.dart';

class CustomBottomAppbar extends StatefulWidget {
  final tabController;
  CustomBottomAppbar({@required this.tabController});
  @override
  _CustomBottomAppbarState createState() =>
      _CustomBottomAppbarState(cController: tabController);
}

class _CustomBottomAppbarState extends State<CustomBottomAppbar> {
  final ccolor = CColor();
  final cController;
  _CustomBottomAppbarState({@required this.cController});
  @override
  Widget build(BuildContext context) {
    print(SizeConfig.screenWidth);
    return BottomAppBar(
      child: TabBar(
            controller: cController,
            labelColor: ccolor.btmAppbar,
            labelPadding: EdgeInsets.symmetric(horizontal: 2),
            labelStyle: TextStyle(fontSize: SizeConfig.screenHeight * 0.016),
            tabs: [
              Tab(
                text: "CATEGORY",
                icon: Icon(
                  Icons.bookmark_border,
                  color: ccolor.btmAppbar,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.search,
                  color: ccolor.btmAppbar,
                ),
                text: "SEARCH",
              ),
      
              Tab(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  color: ccolor.btmAppbar,
                ),
                text: "LEADS",
              ),
              Tab(
                icon: Icon(
                  Icons.person_outline,
                  color: ccolor.btmAppbar,
                ),
                text: "PROFILE",
              ),
            ],
          ),
    );
  }
}

class CustomHalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = new Path();
    path.lineTo(0.0, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

