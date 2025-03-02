import 'package:flutter/material.dart';
import 'package:test_hyperhire/ui/views/home/home_viewmodel.dart';

class TopUser extends StatelessWidget {
  final HomeViewModel viewModel;
  const TopUser({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top: 16, bottom: 24, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '골드 계급 사용자들이예요',
              style: TextStyle(
                color: Color(0xFF606060),
                fontSize: 12,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.60,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '베스트 리뷰어 🏆 Top10',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w500,
                letterSpacing: -0.90,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            SizedBox(
              height: 114.0,
              child: ListView.separated(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: viewModel.topUser.length,
                itemBuilder: (BuildContext context, int index) => InkWell(
                  onTap: () {
                    viewModel.navigateToProfile(viewModel.topUser[index]);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (index == 0)
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Image.asset(
                              "assets/icon_product_top_1.png",
                              width: 16,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 14),
                              child: CircleAvatar(
                                radius: 35,
                                backgroundColor: Color(0xFFFFD233),
                                child: CircleAvatar(
                                    radius: 31,
                                    child: Image.asset(
                                        viewModel.topUser[index].picture)),
                              ),
                            )
                          ],
                        ),
                      if (index != 0)
                        Padding(
                          padding: EdgeInsets.only(top: 18),
                          child: CircleAvatar(
                            radius: 31,
                            backgroundColor: Color(0xFFFFD233),
                            child:
                                Image.asset(viewModel.topUser[index].picture),
                          ),
                        ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        viewModel.topUser[index].name,
                        style: TextStyle(
                          color: Color(0xFF606060),
                          fontSize: 14,
                          fontFamily: 'NotoSansKR',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.28,
                        ),
                      )
                    ],
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 16,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
