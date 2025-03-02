import 'package:test_hyperhire/abstract/ireview_service.dart';
import 'package:test_hyperhire/models/product_model.dart';
import 'package:test_hyperhire/models/review_model.dart';
import 'package:test_hyperhire/models/review_section_model.dart';
import 'package:test_hyperhire/models/user_model.dart';

class ReviewService implements IReviewService {
  @override
  ReviewSectionModel fetchReviews(UserModel user) {
    return ReviewSectionModel(
      id: "1",
      reviewer: user,
      product: ProductModel(
          id: "99",
          rank: 99,
          image: "assets/image_review_section.png",
          title: "AMD 라이젠 5",
          description: [],
          subtitle: "5600X 버미어정품 멀티팩",
          rating: 4.07,
          countRating: 190,
          tags: []),
      reviews: [
        ReviewModel(
            isHelpful: true,
            comment: "멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다."),
        ReviewModel(
          isHelpful: false,
          comment: "3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.",
          picture: [
            "assets/image_review_product_1.png",
            "assets/image_review_product_2.png",
            "assets/image_review_product_3.png"
          ],
        )
      ],
      rating: 4,
      date: DateTime(2022, 12, 9),
      keywords: [
        "“가격 저렴해요”",
        "“CPU온도 고온”",
        "“서멀작업 가능해요”",
        "“게임 잘 돌아가요”",
        "“발열이 적어요”"
      ],
    );
  }
}
