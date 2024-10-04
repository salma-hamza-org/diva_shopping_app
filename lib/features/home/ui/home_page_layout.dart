import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/shared_widgets/active_icon_container_tab.dart';

class HomePageLayout extends StatefulWidget {
  const HomePageLayout({super.key});

  @override
  State<HomePageLayout> createState() => _HomePageLayoutState();
}

class _HomePageLayoutState extends State<HomePageLayout> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final cubit = context.read<HomeCubit>();
        return Scaffold(
          backgroundColor: Colors.white,
          body: cubit.bottomScreens[cubit.currentIndexOfPage],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              cubit.onTabChanged(index);
            },
            backgroundColor: Colors.white,
            elevation: 0,
            selectedItemColor: AppColors.pink,
            unselectedItemColor: Colors.black,
            currentIndex: cubit.currentIndexOfPage,
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
      },
    );
  }
}
