import 'package:flutter/material.dart';
import 'package:test_hyperhire/models/product_model.dart';

import '../common/app_colors.dart';

class CardProductHome extends StatelessWidget {
  final ProductModel product;
  const CardProductHome({super.key, required this.product});

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
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 0,
                top: 0,
                child:
                    Image.asset('assets/icon_product_top_${product.rank}.png'),
              ),
              Positioned(
                left: 7.5,
                top: 5,
                child: Text(
                  product.rank.toString(),
                  style: const TextStyle(
                      fontSize: 7,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto'),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: SizedBox(
            height: 104,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  overflow: TextOverflow.ellipsis,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: product.title,
                        style: const TextStyle(
                          color: Color(0xFF1C1C1C),
                          fontSize: 14,
                          fontFamily: 'NotoSansKR',
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.70,
                        ),
                      ),
                      TextSpan(
                        text: ' ${product.subtitle}',
                        style: const TextStyle(
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
                ...product.description.map(
                  (x) => Text(
                    "\u2022 $x",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 12,
                        color: kcColorBodyText,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'NotoSansKR'),
                  ),
                ),
                Row(
                  children: [
                    Image.asset("assets/icon_rating.png"),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      product.rating.toString(),
                      style: const TextStyle(
                          color: kcCountRatingColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          fontFamily: "NotoSansKR"),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      "(${product.countRating})",
                      style: const TextStyle(
                          color: kcCountReviewColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          fontFamily: "NotoSansKR"),
                    ),
                  ],
                ),
                Row(
                    children: product.tags
                        .map(
                          (tag) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 6),
                            decoration: ShapeDecoration(
                              color: kcCardBackgroundTagColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            child: Text(
                              tag,
                              style: const TextStyle(
                                  height: 1,
                                  color: kcCardTextTagColor,
                                  fontSize: 11,
                                  letterSpacing: -0.55,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "NotoSansKR"),
                            ),
                          ),
                        )
                        .toList())
              ],
            ),
          ),
        )
      ],
    );
  }
}
