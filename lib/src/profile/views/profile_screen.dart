import 'package:fashion_app/common/utils/kcolors.dart';
import 'package:fashion_app/common/widgets/custom_button.dart';
import 'package:fashion_app/common/widgets/help_bottom_sheet.dart';
import 'package:fashion_app/src/profile/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [],
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            color: Kolors.kOffWhite,
            child: Column(
              children: [
                ProfileTileWidget(
                  title: "My Orders",
                  leading: Octicons.checklist,
                  onTap: () {},
                ),
                ProfileTileWidget(
                  title: "Shipping Address",
                  leading: MaterialIcons.location_pin,
                  onTap: () {},
                ),
                ProfileTileWidget(
                  title: "Privacy Policy",
                  leading: MaterialIcons.policy,
                  onTap: () {},
                ),
                ProfileTileWidget(
                  title: "Help Center",
                  leading: AntDesign.customerservice,
                  onTap: () => showHelpCenterBottomSheet(context),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: CustomButton(
                    text: "Logout".toUpperCase(),
                    btnColor: Kolors.kRed,
                    btnWidth: ScreenUtil().screenWidth,
                    btnHieght: 35,
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
