import '../resources/app_responsive.dart';
import '../resources/color_manager.dart';
import '../resources/styles_manager.dart';
import 'package:flutter/material.dart';

class LibraryWidget extends StatelessWidget {
  const LibraryWidget({Key? key, required this.image, required this.title})
      : super(key: key);

  final String? image;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: getheight(
                context: context,
                height: 0.48,
              ),
              width: getwidth(context: context, width: 0.32),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    image: NetworkImage(image!),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
            height: getheight(context: context, height: .02),
          ),
          SizedBox(
            width: getwidth(
              context: context,
              width: 0.22,
            ),
            child: Text(
              title!,
              style: getRegularStyle(color: ColorManager.grey, fontSize: 15),
              textAlign: TextAlign.end,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
