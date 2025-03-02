import 'package:flutter/material.dart';
import 'package:test_hyperhire/ui/views/profile/profile_viewmodel.dart';

class CardReview extends StatelessWidget {
  final ProfileViewModel viewModel;
  const CardReview({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: viewModel.reviewModel?.reviews.length ?? 0,
      itemBuilder: (BuildContext context, int index) => ListTile(
        titleAlignment: ListTileTitleAlignment.top,
        leading: (viewModel.reviewModel?.reviews[index].isHelpful ?? false)
            ? Image.asset('assets/lightning_active.png')
            : Image.asset('assets/lightning_nonactive.png'),
        title: Text(
          viewModel.reviewModel?.reviews[index].comment ?? '',
          style: TextStyle(
            color: Color(0xFF606060),
            fontSize: 14,
            fontFamily: 'NotoSansKR',
            fontWeight: FontWeight.w400,
            letterSpacing: -0.70,
          ),
        ),
        subtitle: (viewModel.reviewModel?.reviews[index].picture?.length ??
                    0) !=
                0
            ? Row(
                children: [
                  SizedBox(
                    height: 18,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 72.0,
                      width: double.infinity,
                      child: ListView.separated(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: viewModel
                                .reviewModel?.reviews[index].picture?.length ??
                            0,
                        itemBuilder: (BuildContext context, int indexPicture) {
                          return Image.asset(
                              viewModel.reviewModel?.reviews[index]
                                      .picture?[indexPicture] ??
                                  '',
                              width: 72,
                              height: 72);
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 10,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              )
            : null,
      ),
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 10,
        );
      },
    );
  }
}
