import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test_hyperhire/ui/common/app_colors.dart';

import '../home/home_view.dart';
import 'main_viewmodel.dart';

class MainView extends StackedView<MainViewModel> {
  const MainView({super.key});

  @override
  Widget builder(
    BuildContext context,
    MainViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: getViewIndex(viewModel.currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: viewModel.currentIndex,
          onTap: viewModel.setCurrentIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: kcUnselectedBottomNavbarColor,
          selectedLabelStyle:
              const TextStyle(fontSize: 12, color: Colors.black),
          unselectedLabelStyle: const TextStyle(
              fontSize: 12, color: kcUnselectedBottomNavbarColor),
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/bottom_navbar_1.png',
                  width: 28,
                  height: 28,
                ),
                activeIcon: Image.asset(
                  'assets/bottom_navbar_active_1.png',
                  width: 28,
                  height: 28,
                ),
                label: '홈'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/bottom_navbar_2.png',
                  width: 28,
                  height: 28,
                ),
                activeIcon: Image.asset(
                  'assets/bottom_navbar_active_2.png',
                  width: 28,
                  height: 28,
                ),
                label: '카테고리'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/bottom_navbar_3.png',
                  width: 28,
                  height: 28,
                ),
                activeIcon: Image.asset(
                  'assets/bottom_navbar_active_3.png',
                  width: 28,
                  height: 28,
                ),
                label: '커뮤니티'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/bottom_navbar_4.png',
                  width: 28,
                  height: 28,
                ),
                activeIcon: Image.asset(
                  'assets/bottom_navbar_active_4.png',
                  width: 28,
                  height: 28,
                ),
                label: '마이페이지'),
          ]),
    );
  }

  @override
  MainViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MainViewModel();

  getViewIndex(currentIndex) {
    switch (currentIndex) {
      case 0:
        return const HomeView();
      case 1:
        return const Center(
          child: Text("카테고리"),
        );
      case 2:
        return const Center(
          child: Text("커뮤니티"),
        );
      case 3:
        return const Center(
          child: Text("마이페이지"),
        );
      default:
    }
  }
}
