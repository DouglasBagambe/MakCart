import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/common/Widgets/custom_app_bar.dart';
import '/common/Widgets/item_widget.dart';
import '/screens/Product/product.dart';
import '/utils/app_colors.dart';
import '/utils/font_styles.dart';

class Favorite extends StatefulWidget {
  static const String routeName = 'filter';
  const Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteLight,
      appBar: _buildAppBar(context),
      body: _buildBody(context),
    );
  }

  PreferredSize _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize:
          Size(double.infinity, MediaQuery.of(context).size.height * .20.h),
      child: CustomAppBar(
        isHome: false,
        title: 'Favorite',
        fixedHeight: 88.0.h,
        enableSearchField: false,
        // leadingIcon: Icons.arrow_back,
        leadingOnTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0.w, right: 20.0.w, bottom: 50.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildItemAndSortTile(context),
          _buildFavoriteItems(context),
        ],
      ),
    );
  }

  Widget _buildItemAndSortTile(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          '1 Item',
          style: FontStyles.montserratBold19(),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Sort by:',
              style: FontStyles.montserratBold12()
                  .copyWith(color: AppColors.textLightColor),
            ),
            Text(
              'Price: Low to High',
              style: FontStyles.montserratBold12()
                  .copyWith(color: AppColors.primaryDark),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.primaryDark,
            )
          ],
        ));
  }

  Widget _buildFavoriteItems(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 1,
        physics: const ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 260.0.w,
            crossAxisSpacing: 10.0.h),
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Product.routeName, arguments: index);
            },
            child: ItemWidget(
              index: index,
              favoriteIcon: true,
            ),
          );
        },
      ),
    );
  }
}
