import 'package:e_commerce/core/theming/colors.dart';
import 'package:e_commerce/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemListTopSelling extends StatefulWidget {
  const ItemListTopSelling({super.key});

  @override
  State<ItemListTopSelling> createState() => _ItemListTopSellingState();
}

class _ItemListTopSellingState extends State<ItemListTopSelling> {
  bool isLove = false;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 281.h,
        width: 159.w,
        decoration: BoxDecoration(
            color: ColorsManager.bgLight,
            borderRadius: BorderRadius.circular(16.r)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 220.h,
              ),
              Text(
                'Men\'s Harrington Jacket',
                style: TextStyles.font12BlackW500,
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "\$148.00",
                style: TextStyles.font12BlackW700,
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: 4.h,
        right: 4.h,
        child: IconButton(
            onPressed: () {
              setState(() {
                isLove = !isLove;
              });
            },
            icon: isLove
                ? const Icon(
                    Icons.favorite,
                    color: ColorsManager.blueBlack,
                  )
                : const Icon(Icons.favorite_border)),
      )
    ]);
  }
}
