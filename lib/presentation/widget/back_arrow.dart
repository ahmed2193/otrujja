// import '../resources/assets_manager.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class BackArrow extends StatelessWidget {
//  const BackArrow({
//     Key? key,
//   required  this.color,
//   }) : super(key: key);

//  final Color? color ;

//   @override
//   Widget build(BuildContext context) {
//     return Builder(builder: (context) {
//       return Tooltip(
//         message: 'رجوع',
//         child: InkWell(
//           onTap: () {
//             Navigator.pop(context);
//           },
//           child: SvgPicture.asset(
//             ImageAssets.backArrow,
//             fit: BoxFit.contain,
//             color: color,
//           ),
//         ),
//       );
//     });
//   }
// }
