import 'package:fashion_app/common/widgets/login_bottom_sheet.dart';
import 'package:fashion_app/const/constants.dart';
import 'package:fashion_app/src/products/widgets/staggered_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../common/services/storage.dart';

class ExploreProducts extends StatelessWidget {
  const ExploreProducts({super.key});

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: List.generate(
          products.length,
          (i) {
            final double mainAxisCellCount = (i % 2 == 0 ? 2.17 : 2.4);
            final product = products[i];
            return StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: mainAxisCellCount,
              child: StaggeredTileWidget(
                onTap: () {
                  if (accessToken == null) {
                    loginBottomSheet(context);
                  } else {}
                },
                i: i,
                product: product,
              ),
            );
          },
        ),
      ),
    );
  }
}
