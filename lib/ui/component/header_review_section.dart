import 'package:flutter/material.dart';
import 'package:test_hyperhire/ui/component/change_sort.dart';

class HeaderReviewSection extends StatelessWidget {
  const HeaderReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(TextSpan(children: [
            TextSpan(
              text: '작성한 리뷰',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w500,
                letterSpacing: -0.80,
              ),
            ),
            TextSpan(
              text: ' 총 35개',
              style: TextStyle(
                color: Color(0xFF606060),
                fontSize: 12,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w400,
                height: 1.92,
                letterSpacing: -0.24,
              ),
            ),
          ])),
          ChangeSort()
        ],
      ),
    );
  }
}
