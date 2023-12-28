import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/common/Widgets/shimmer_effect.dart';
import '/utils/app_colors.dart';
import '/utils/font_styles.dart';
import '/dummy/dummy_data.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget({this.index, this.favoriteIcon, Key? key}) : super(key: key);
  final int? index;
  final bool? favoriteIcon;
  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFeaturedWidget(context, widget.index),
        _buildFeaturedItemText1(context),
        _buildFeaturedItemPrice1(context),
        // _buildFeaturedItemText2(context),
        // _buildFeaturedItemPrice2(context),
      ],
    );
  }

  Widget _buildFeaturedWidget(BuildContext context, index) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                height: 163.h,
                width: 163.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: CachedNetworkImage(
                  imageUrl: DummyData.featured[index],
                  fit: BoxFit.cover,
                  placeholder: (context, name) {
                    return ShimmerEffect(
                        borderRadius: 10.0,
                        height: screenHeight * .15,
                        width: screenWidth * .40);
                  },
                  errorWidget: (context, error, child) {
                    return ShimmerEffect(
                      borderRadius: 10.0,
                      height: screenHeight * .20,
                      width: screenWidth * .45,
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              width: 47.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                gradient: LinearGradient(
                  colors: [Color(0xFFF49763), Color(0xFFD23A3A)],
                  stops: [0, 1],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: Center(
                child: Text(
                  '50%',
                  style: FontStyles.montserratBold17()
                      .copyWith(fontSize: 11.0, color: AppColors.white),
                ),
              ),
            ),
            widget.favoriteIcon!
                ? Positioned(
                    bottom: -15.0,
                    right: 10.0,
                    child: Container(
                        height: 36.0,
                        width: 36.0,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(36.0),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          child: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color:
                                isFavorite ? AppColors.secondary : Colors.black,
                          ),
                        )),
                  )
                : const SizedBox(height: 0, width: 0),
          ],
        ),
        _buildRatings(context),
      ],
    );
  }

  Widget _buildRatings(BuildContext context) {
    return SizedBox(
      height: 20,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Icon(
              Icons.star,
              color: AppColors.secondary,
              size: 10.0,
            );
          }),
    );
  }

  Widget _buildFeaturedItemText1(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * .40,
      child: Text(
        'Men\'s Air Force 1',
        style: FontStyles.montserratRegular14().copyWith(
          color: const Color(0xFF34283E),
        ),
      ),
    );
  }

  Widget _buildFeaturedItemPrice1(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * .40,
      child: Text(
        'UGX 250,000',
        style: FontStyles.montserratBold17(),
      ),
    );
  }

  // Widget _buildFeaturedItemText2(BuildContext context) {
  //   var screenWidth = MediaQuery.of(context).size.width;
  //   return SizedBox(
  //     width: screenWidth * .40,
  //     child: Text(
  //       'iPhone 13 mini',
  //       style: FontStyles.montserratRegular14().copyWith(
  //         color: const Color(0xFF34283E),
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildFeaturedItemPrice2(BuildContext context) {
  //   var screenWidth = MediaQuery.of(context).size.width;
  //   return SizedBox(
  //     width: screenWidth * .40,
  //     child: Text(
  //       'UGX 2,500,000',
  //       style: FontStyles.montserratBold17(),
  //     ),
  //   );
  // }
}
