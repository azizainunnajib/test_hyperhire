import 'package:flutter/material.dart';
import 'package:test_hyperhire/ui/component/card_product_review_section.dart';
import 'package:test_hyperhire/ui/component/card_review.dart';
import 'package:test_hyperhire/ui/component/comment_form.dart';
import 'package:test_hyperhire/ui/component/header_review.dart';
import 'package:test_hyperhire/ui/component/header_review_section.dart';
import 'package:test_hyperhire/ui/component/keyword_review.dart';
import 'package:test_hyperhire/ui/views/profile/profile_viewmodel.dart';

class ReviewSection extends StatelessWidget {
  final ProfileViewModel viewModel;
  const ReviewSection({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        children: [
          HeaderReviewSection(),
          Divider(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 8, left: 16, right: 16),
            child: Column(
              children: [
                CardProductReviewSection(
                    product: viewModel.reviewModel?.product),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  height: 1,
                ),
                SizedBox(
                  height: 14,
                ),
                HeaderReview(review: viewModel.reviewModel),
                SizedBox(
                  height: 20,
                ),
                KeywordReview(
                  keywords: viewModel.reviewModel?.keywords ?? [],
                ),
                SizedBox(
                  height: 18,
                ),
                CardReview(
                  viewModel: viewModel,
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                CommentForm()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
