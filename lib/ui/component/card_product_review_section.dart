import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:test_hyperhire/models/product_model.dart';
import 'package:test_hyperhire/ui/common/app_colors.dart';

class CardProductReviewSection extends StatelessWidget {
  final ProductModel? product;
  const CardProductReviewSection({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 104,
          width: 104,
          decoration: BoxDecoration(
            border: Border.all(color: kcBorderGrey),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Image.asset(
            product?.image ?? '',
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: SizedBox(
            height: 104,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '${product?.title}',
                        style: TextStyle(
                          color: Color(0xFF1C1C1C),
                          fontSize: 14,
                          fontFamily: 'NotoSansKR',
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.70,
                        ),
                      ),
                      TextSpan(
                        text: ' ${product?.subtitle}',
                        style: TextStyle(
                          color: Color(0xFF1C1C1C),
                          fontSize: 14,
                          fontFamily: 'NotoSansKR',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.70,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: product?.rating ?? 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      itemSize: 18,
                      itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      product!.rating.toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'NotoSansKR',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.90,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
