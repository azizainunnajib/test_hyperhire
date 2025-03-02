import 'package:flutter/material.dart';
import 'package:test_hyperhire/models/user_model.dart';
import 'package:test_hyperhire/ui/common/app_colors.dart';

class CardProfile extends StatelessWidget {
  final UserModel user;
  const CardProfile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding:
            const EdgeInsets.only(top: 24.0, bottom: 28, left: 46, right: 46),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              child: Image.asset(user.picture),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              user.name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            if (user.rank == 1)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/icon_product_top_1.png",
                    width: 19,
                    height: 15,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '골드',
                    style: TextStyle(
                      color: kcCountRatingColor,
                      fontSize: 14,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.70,
                    ),
                  )
                ],
              ),
            SizedBox(
              height: 18,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: ShapeDecoration(
                color: Color(0xFFF0F0F0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
              ),
              child: Text(
                user.description,
                style: TextStyle(
                  color: kcTextFooterColor,
                  fontSize: 14,
                  fontFamily: 'NotoSansKR',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.28,
                ),
              ),
            )
          ],
        ));
  }
}
