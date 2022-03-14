// import '../main/main_view.dart';
// import '../resources/app_responsive.dart';
// import '../resources/assets_manager.dart';
// import '../resources/color_manager.dart';
// import '../resources/styles_manager.dart';
// import 'popularCat.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
// import 'package:shimmer/shimmer.dart';

// class RawadLoading extends StatelessWidget {
//   const RawadLoading({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//       baseColor: ColorManager.loadingColors,
//       highlightColor: ColorManager.white,
//       child: SizedBox(
//         height: getheight(context: context, height: 1.34),
//         child: GridView.builder(
//             gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                 maxCrossAxisExtent: 200,
//                 childAspectRatio: 3 / 3.2,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 20),
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             itemCount: 4,
//             padding: const EdgeInsets.only(left: 10, right: 10, bottom: 40),
//             itemBuilder: (BuildContext ctx, index) {
//               return AnimationConfiguration.staggeredGrid(
//                 position: index,
//                 duration: const Duration(milliseconds: 1000),
//                 columnCount: 20,
//                 child: ScaleAnimation(
//                   child: FadeInAnimation(
//                       child: GestureDetector(
//                     onTap: () {},
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Expanded(
//                           child: ClipRRect(
//                               borderRadius: BorderRadius.circular(18),
//                               child: Image.asset(ImageAssets.profile,
//                                   width: getwidth(context: context, width: .89),
//                                   fit: BoxFit.cover,
//                                   filterQuality: FilterQuality.high)),
//                         ),
//                         SizedBox(
//                           height: getheight(context: context, height: .02),
//                         ),
//                         Center(
//                           child: Text(
//                             "....",
//                             style: getRegularStyle(
//                                 color: ColorManager.grey, fontSize: 15),
//                             textAlign: TextAlign.end,
//                           ),
//                         ),
//                       ],
//                     ),
//                   )),
//                 ),
//               );
//             }),
//       ),
//     );
//   }
// }

// class PopulerLOading extends StatelessWidget {
//   const PopulerLOading({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//         baseColor: ColorManager.loadingColors,
//         highlightColor: ColorManager.white,
//         child: ListView(
//           physics: const NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           children: [
//             for (var index = 0; index < 4; index++)
//               PopularCat(
//                 ontap: () => {},
//                 title: '...',
//                 subTitle: "....",
//                 image: ImageAssets.profile,
//                 icon: const SizedBox(),
//                 icon1: const SizedBox(),
//               ),
//           ],
//         ));
//   }
// }

// class Ma7werLoading extends StatelessWidget {
//   const Ma7werLoading({
//     Key? key,
//     required this.catImage,
//     required this.catColor,
//   }) : super(key: key);

//   final List<String> catImage;
//   final List<Color> catColor;

//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//         baseColor: ColorManager.loadingColors,
//         highlightColor: ColorManager.white,
//         child: Padding(
//           padding: const EdgeInsets.only(right: 10),
//           child: Wrap(
//             textDirection: TextDirection.rtl,
//             // direction: Axis.vertical ,
//             verticalDirection: VerticalDirection.down,
//             runAlignment: WrapAlignment.start,
//             spacing: 3.0,
//             runSpacing: 5,
//             crossAxisAlignment: WrapCrossAlignment.start,
//             children: [
//               for (var i = 0; i < 7; i++)
//                 Padding(
//                   padding: const EdgeInsets.only(top: 4),
//                   child: GestureDetector(
//                     onTap: () {},
//                     child: Catbuild(
//                       title: '_...',
//                       image: catImage[i],
//                       catColor: catColor[i],
//                       height: getheight(context: context, height: 0.12),
//                     ),
//                   ),
//                 ),
//             ],
//           ),
//         ));
//   }
// }

// class HeaderLoading extends StatelessWidget {
//   const HeaderLoading({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//         baseColor: ColorManager.loadingColors,
//         highlightColor: ColorManager.white,
//         child: Container(
//             padding: EdgeInsets.only(top: 180, left: 50, right: 50),
//             child: Container(
//               width: 300,
//               height: 150,
//               decoration: BoxDecoration(
//                 color: ColorManager.loadingColors,
//                 borderRadius: const BorderRadius.all(Radius.circular(15.0)),
//               ),
//               child: SizedBox(),
//             )));
//   }
// }
