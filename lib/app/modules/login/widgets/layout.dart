// import 'package:flutter/material.dart';
// import 'package:habitat_ft_user/app/utils/config/custom_color.dart';

// class Layout extends StatelessWidget {
//   final List<Widget> children;

//   final Color backgroundColor, cardColor;
//   final EdgeInsetsGeometry padding;
//   final double height, width;
//   final MainAxisAlignment mainAxisAlignment;
//   final BorderRadiusGeometry borderRadius;

//   const Layout({
//     @required this.children,
//     this.backgroundColor = CustomColor.CELESTE_OSCURO,
//     this.padding = const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
//     this.height = 483,
//     this.width = 340,
//     this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
//     this.borderRadius = const BorderRadius.all(Radius.circular(8)),
//     this.cardColor = CustomColor.GRIS_01,
//   });

//   @override
//   Widget build(_) => Scaffold(
//         body: Container(
//           color: backgroundColor,
//           child: Center(
//             child: Container(
//               padding: padding,
//               height: height,
//               width: width,
//               decoration: BoxDecoration(
//                 color: cardColor,
//                 borderRadius: borderRadius,
//               ),
//               child: Column(
//                 children: children,
//               ),
//             ),
//           ),
//         ),
//       );
// }
