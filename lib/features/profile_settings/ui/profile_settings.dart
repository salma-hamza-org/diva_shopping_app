import 'package:diva_shopping_app/core/helpers/extentions.dart';
import 'package:diva_shopping_app/core/helpers/shared_pref.dart';
import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/routing/routes_names.dart';
import 'package:diva_shopping_app/core/shared_widgets/item_of_setting_list.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileSettings extends StatelessWidget{
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {

    List <String> textOfAccountList = [
      'Personal Information',
      'Payment method',
      'Address',
      'Measurements',
      'Notification',
    ];
    List <String> textOfPrivacyList = [
      'Orders',
      'Security',
      'Privacy & Cookie policy',
      'Terms & Conditions',
      'Rating & Feedback',
    ];

    List <IconData> iconsOfAccountList = [
      Icons.person_outline,
      Icons.payment,
      Icons.location_on_outlined,
      Icons.horizontal_rule_rounded,
      Icons.notifications_active_outlined

    ];

    List <IconData> iconsOffPrivacyList = [
      Icons.shopping_bag_outlined,
      Icons.security,
      Icons.privacy_tip_outlined,
      Icons.message_sharp,
      Icons.star_outline,

    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: AppTextStyles.font24RobotoBlack,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                logOut(context);
              },
              icon: Icon(Icons.logout,
              size: 26.sp,)
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Account',
            style: AppTextStyles.font18RobotoPink
            ),
            verticalSpace(20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(3, 3),
                  ),
                ],

              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context,index) => Container(
                  height: 1,
                  color: Colors.grey[300],
                ) ,
                itemBuilder: (context,index) => ItemOfSettingList(
                  icon: iconsOfAccountList[index],
                  text: textOfAccountList[index],
                ),
                itemCount: textOfAccountList.length,

              ),
            ),
            verticalSpace(30),
            Text('Privacy',
                style: AppTextStyles.font18RobotoPink
            ),
            verticalSpace(20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(3, 3),
                  ),
                ],

              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context,index) => Container(
                  height: 1,
                  color: Colors.grey[300],
                ) ,
                itemBuilder: (context,index) => ItemOfSettingList(
                  icon: iconsOffPrivacyList[index],
                  text: textOfPrivacyList[index],
                ),
                itemCount: textOfPrivacyList.length,
              ),
            ),
            verticalSpace(20),
            GestureDetector(
              onTap: (){
                logOut(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: const Offset(3, 3),
                    ),
                  ],

                ),
                child: const ItemOfSettingList(
                  icon: Icons.logout,
                  text: 'Log Out ',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Future<void> logOut(context) async {
    await SharedPrefHelper.clearAllSecuredData();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.check,
          color: Colors.green,
          size: 32,
        ),
        content: Text(
          'Logged Out Successfully',
          style: AppTextStyles.font15DarkGreyMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pushNamedAndRemoveUntil(Routes.loginScreen, predicate: (Route<dynamic> route) => false,);
            },
            child: Text(
              'Got it',
              style: AppTextStyles.font13RobotoPink,
            ),
          ),
        ],
      ),
    );
  }

}

