import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/features/home/ui/widgets/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/shared_widgets/active_icon_container_tab.dart';
import '../../cart/ui/cart_tab.dart';
import '../../categories/logic/cubit/category_cubit.dart';
import '../../categories/ui/category_tab.dart';
import '../../wish_list/ui/wish_list_tab.dart';

class HomePageLayout extends StatefulWidget {
  const HomePageLayout({super.key});

  @override
  State<HomePageLayout> createState() => _HomePageLayoutState();
}

class _HomePageLayoutState extends State<HomePageLayout> {
  int selectedIndex = 0;

  List<Widget> bottomScreens = [
    const HomeTab(),
    BlocProvider(
      create: (context) => getIt<CategoryCubit>()..getCategoriesList(),
      child: const CategoryTab(),
    ),
    const CartTab(),
    const WishListTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: bottomScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: AppColors.pink,
        unselectedItemColor: Colors.black,
        currentIndex: selectedIndex,
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
