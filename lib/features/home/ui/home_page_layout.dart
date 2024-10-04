import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/features/cart/ui/cart_tab.dart';
import 'package:diva_shopping_app/features/categories/ui/category_tab.dart';
import 'package:diva_shopping_app/features/home/ui/widgets/home_tab.dart';
import 'package:diva_shopping_app/features/wish_list/ui/wish_list_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/shared_widgets/active_icon_container_tab.dart';

class HomePageLayout extends StatefulWidget {
  const HomePageLayout({super.key});

  @override
  State<HomePageLayout> createState() => _HomePageLayoutState();
}

class _HomePageLayoutState extends State<HomePageLayout> {
  int currentIndexOfPage = 0;
  List<Widget> bottomScreens = [
    const HomeTab(),
    const CategoryTab(),
    const CartTab(),
    const WishListTab(),
  ];
  void _onTap(int index) {
    setState(() {
      currentIndexOfPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: bottomScreens[currentIndexOfPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTap,
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: AppColors.pink,
        unselectedItemColor: Colors.black,
        currentIndex: currentIndexOfPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 26.sp),
            label: '',
            activeIcon: ActiveIconContainerTab(
              icon: Icons.home,
              labelText: 'Home',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_open_rounded, size: 26.sp),
            label: '',
            activeIcon: ActiveIconContainerTab(
              icon: Icons.menu_open_rounded,
              labelText: 'Category',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded, size: 24.sp),
            label: '',
            activeIcon: ActiveIconContainerTab(
              icon: Icons.shopping_cart_rounded,
              labelText: 'cart',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, size: 26.sp),
            label: '',
            activeIcon: ActiveIconContainerTab(
              icon: Icons.favorite_border,
              labelText: 'wishList',
            ),
          ),
        ],
      ),
    );
  }
}
