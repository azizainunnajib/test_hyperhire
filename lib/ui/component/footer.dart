import 'package:flutter/material.dart';
import 'package:test_hyperhire/ui/common/app_colors.dart';
import 'package:test_hyperhire/ui/component/change_language.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 24),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'LOGO Inc.',
          style: TextStyle(
            color: kcTextFooterColor,
            fontSize: 14,
            fontFamily: 'NotoSansKR',
            fontWeight: FontWeight.w500,
            letterSpacing: -0.70,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '회사 소개 ',
              style: TextStyle(
                color: Color(0xFF858585),
                fontSize: 13,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.65,
              ),
            ),
            const SizedBox(width: 18),
            Image.asset(
              'assets/icon_separator_footer.png',
            ),
            const SizedBox(width: 18),
            Text(
              '인재 채용',
              style: TextStyle(
                color: Color(0xFF858585),
                fontSize: 13,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.65,
              ),
            ),
            const SizedBox(width: 18),
            Image.asset(
              'assets/icon_separator_footer.png',
            ),
            const SizedBox(width: 18),
            Text(
              '기술 블로그',
              style: TextStyle(
                color: Color(0xFF858585),
                fontSize: 13,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.65,
              ),
            ),
            const SizedBox(width: 18),
            Image.asset(
              'assets/icon_separator_footer.png',
            ),
            const SizedBox(width: 18),
            Text(
              '리뷰 저작권',
              style: TextStyle(
                color: Color(0xFF858585),
                fontSize: 13,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.65,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          children: [
            Image.asset("assets/icon_send_review.png"),
            SizedBox(
              width: 2,
            ),
            Text(
              'review@logo.com',
              style: TextStyle(
                color: kcTextFooterColor,
                fontSize: 13,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w400,
                height: 1,
                letterSpacing: -0.65,
              ),
            ),
            Spacer(),
            ChangeLanguage()
          ],
        ),
        Divider(
          height: 24,
          thickness: 1,
          color: Color(0xFFC8C8C8),
        ),
        Text(
          '@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구',
          style: TextStyle(
            color: kcTextFooterColor,
            fontSize: 10,
            fontFamily: 'NotoSansKR',
            fontWeight: FontWeight.w400,
            letterSpacing: -0.20,
          ),
        )
      ]),
    );
  }
}
