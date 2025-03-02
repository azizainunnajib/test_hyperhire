import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';
import 'package:test_hyperhire/ui/common/app_colors.dart';
import 'package:test_hyperhire/ui/component/card_profile.dart';
import 'package:test_hyperhire/ui/component/review_section.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  final String userId;
  const ProfileView({Key? key, required this.userId}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          children: [
            const Text(
              '랭킹 1위',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kcTextFooterColor,
                fontSize: 10,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              '베스트 리뷰어',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF1C1C1C),
                fontSize: 16,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
        shadowColor: Colors.white70,
        elevation: 4,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardProfile(user: viewModel.selectedUser),
            SizedBox(
              height: 14,
            ),
            ReviewSection(
              viewModel: viewModel,
            )
          ],
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
  @override
  void onViewModelReady(ProfileViewModel viewModel) =>
      SchedulerBinding.instance.addPostFrameCallback(
          (timeStamp) => viewModel.runStartupLogic(this.userId));
}
