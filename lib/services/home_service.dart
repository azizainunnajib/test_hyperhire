import 'package:test_hyperhire/abstract/ihome_service.dart';
import 'package:test_hyperhire/models/image_promo_model.dart';
import 'package:test_hyperhire/models/product_model.dart';
import 'package:test_hyperhire/models/user_model.dart';

// usually using repository pattern with help dio and reftrofit package
class HomeService implements IHomeService {
  @override
  List<ImagePromoModel> getPromoImages() {
    return [
      ImagePromoModel(id: '1', image: 'assets/image_test_1.png'),
      ImagePromoModel(id: '2', image: 'assets/image_test_2.png'),
      ImagePromoModel(id: '3', image: 'assets/image_test_3.png'),
      ImagePromoModel(id: '4', image: 'assets/image_test_4.png'),
    ];
  }

  @override
  List<ProductModel> getTopProducts() {
    return [
      ProductModel(
        id: '1',
        rating: 4.89,
        image: 'assets/image_product_top_1.png',
        rank: 1,
        title: 'LG전자',
        description: [
          "화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.",
          "스탠바이미는 사랑입니다!️"
        ],
        subtitle: '스탠바이미 27ART10AKPL (스탠',
        countRating: 216,
        tags: ["LG전자", "편리성"],
      ),
      ProductModel(
        id: '2',
        rating: 4.36,
        image: 'assets/image_product_top_2.png',
        rank: 2,
        title: 'LG전자',
        description: [
          "화면 잘 나오고... 리모컨 기능 좋습니다.",
          "넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!"
        ],
        subtitle: '울트라HD 75UP8300KNA (스탠드)',
        countRating: 136,
        tags: ["LG전자", "고화질"],
      ),
      ProductModel(
        id: '3',
        rating: 3.98,
        image: 'assets/image_product_top_3.png',
        rank: 3,
        title: '라익미',
        description: [
          "반응속도 및 화질이나 여러면에서도 부족함을  느끼기에는 커녕 이정도에 이 정도 성능이면 차고 넘칠만 합니다",
          "중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어 OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고"
        ],
        subtitle: '스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)',
        countRating: 98,
        tags: ["라익미", "가성비"],
      ),
    ];
  }

  @override
  List<UserModel> getTopUsers() {
    return [
      UserModel(
        id: '1',
        name: 'Name01',
        rank: 1,
        description: '조립컴 업체를 운영하며 리뷰를 작성합니다.',
        picture: 'assets/user1.png',
      ),
      UserModel(
        id: '2',
        name: 'Name02',
        rank: 2,
        description: '조립컴 업체를 운영하며 리뷰를 작성합니다.',
        picture: 'assets/user2.png',
      ),
      UserModel(
        id: '3',
        name: 'Name03',
        rank: 3,
        description: '조립컴 업체를 운영하며 리뷰를 작성합니다.',
        picture: 'assets/user3.png',
      ),
      UserModel(
        id: '4',
        name: 'Name04',
        rank: 4,
        description: '조립컴 업체를 운영하며 리뷰를 작성합니다.',
        picture: 'assets/user4.png',
      ),
      UserModel(
        id: '5',
        name: 'Name05',
        rank: 5,
        description: '조립컴 업체를 운영하며 리뷰를 작성합니다.',
        picture: 'assets/user5.png',
      ),
      UserModel(
        id: '6',
        name: 'Name06',
        rank: 6,
        description: '조립컴 업체를 운영하며 리뷰를 작성합니다.',
        picture: 'assets/user6.png',
      ),
      UserModel(
        id: '7',
        name: 'Name07',
        rank: 7,
        description: '조립컴 업체를 운영하며 리뷰를 작성합니다.',
        picture: 'assets/user7.png',
      ),
      UserModel(
        id: '8',
        name: 'Name08',
        rank: 8,
        description: '조립컴 업체를 운영하며 리뷰를 작성합니다.',
        picture: 'assets/user8.png',
      ),
      UserModel(
        id: '9',
        name: 'Name09',
        rank: 9,
        description: '조립컴 업체를 운영하며 리뷰를 작성합니다.',
        picture: 'assets/user9.png',
      ),
      UserModel(
        id: '10',
        name: 'Name10',
        rank: 10,
        description: '조립컴 업체를 운영하며 리뷰를 작성합니다.',
        picture: 'assets/user10.png',
      ),
    ];
  }
}
