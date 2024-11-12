import 'package:coffe_shop/utils/constant.dart';

class ModelWalkThrough {
  String? image;
  String? title;
  String? subTitle;

  ModelWalkThrough({
    this.image,
    this.title,
    this.subTitle
  });
}

List walkthroughList = [
  ModelWalkThrough(
    image: walkthroughImg1,
    title: walkthroughTitle1,
    subTitle: walkthroughSubtitle1
  ),
  ModelWalkThrough(
    image: walkthroughImg2,
    title: walkthroughTitle2,
    subTitle: walkthroughSubtitle2
  ),
  ModelWalkThrough(
    image: walkthroughImg3,
    title: walkthroughTitle3,
    subTitle: walkthroughSubtitle3
  )
];
