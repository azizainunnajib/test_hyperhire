import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:test_hyperhire/models/review_section_model.dart';
import 'package:intl/intl.dart';

class HeaderReview extends StatelessWidget {
  final ReviewSectionModel? review;
  const HeaderReview({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 0,
      dense: true,
      contentPadding: EdgeInsets.all(0),
      leading: Image.asset(review?.reviewer.picture ?? ''),
      title: Text(
        review?.reviewer.name ?? '',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: 'NotoSansKR',
          fontWeight: FontWeight.w500,
          letterSpacing: -0.70,
        ),
      ),
      subtitle: Row(
        children: [
          RatingBar.builder(
            initialRating: review?.rating ?? 0,
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
          Text(
            DateFormat('yyyy.MM.dd').format(review?.date ?? DateTime.now()),
            style: TextStyle(
              color: Color(0xFF858585),
              fontSize: 10,
              fontFamily: 'NotoSansKR',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      trailing: IconButton(
          onPressed: null, icon: Icon(Icons.bookmark_border_rounded)),
    );
  }
}
