import 'package:flutter/material.dart';

class KeywordReview extends StatelessWidget {
  final List<String> keywords;
  const KeywordReview({super.key, required this.keywords});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15.0,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) => Text(
          keywords[index],
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFA0A0A0),
            fontSize: 10,
            fontFamily: 'NotoSansKR',
            fontWeight: FontWeight.w700,
            letterSpacing: -0.50,
          ),
        ),
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 16,
          );
        },
      ),
    );
  }
}
