import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';
import 'package:test_hyperhire/ui/common/app_colors.dart';
import 'package:test_hyperhire/ui/component/custom_image_slideshow.dart';
import 'package:test_hyperhire/ui/component/custom_searchbar.dart';
import 'package:test_hyperhire/ui/component/footer.dart';
import 'package:test_hyperhire/ui/component/top_product.dart';
import 'package:test_hyperhire/ui/component/top_user.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  bool get disposeViewModel => false;

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "LOGO",
            style: TextStyle(
                fontSize: 24, color: kcColorLogo, fontWeight: FontWeight.w500),
          ),
          shadowColor: Colors.white70,
          elevation: 4,
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.white),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                padding:
                    EdgeInsets.only(top: 24.0, bottom: 26, left: 16, right: 16),
                child: CustomSearchBar(),
              ),
              CustomImageSlideshow(
                viewModel: viewModel,
              ),
              TopProduct(
                viewModel: viewModel,
              ),
              SizedBox(
                height: 14,
              ),
              TopUser(
                viewModel: viewModel,
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();

  @override
  void onViewModelReady(HomeViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}
