import 'package:flutter/material.dart';
import 'package:test_hyperhire/ui/component/card_product_home.dart';
import 'package:test_hyperhire/ui/views/home/home_viewmodel.dart';

import '../common/app_colors.dart';

class TopProduct extends StatelessWidget {
  final HomeViewModel viewModel;
  const TopProduct({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
        child: Column(
          children: [
            const ListTile(
              onTap: null,
              contentPadding: EdgeInsets.all(0),
              tileColor: Colors.white,
              dense: true,
              title: Text(
                "제일 핫한 리뷰를 만나보세요",
                style: TextStyle(
                    fontSize: 14,
                    color: kcTextSubtitleColor,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'NotoSansKR'),
              ),
              subtitle: Text(
                "리뷰️  랭킹⭐ top 3",
                style: TextStyle(
                    fontSize: 18,
                    color: kcTextTitleColor,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'NotoSansKR'),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const SizedBox(
              height: 14,
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: viewModel.topProduct.length,
              itemBuilder: (BuildContext context, int index) =>
                  CardProductHome(product: viewModel.topProduct[index]),
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 10,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
