import 'package:framer_project/core/utils/assets.dart';

class ItemFeatures{
  final String image;
  final String name;

  ItemFeatures({required this.image, required this.name});
}
List<ItemFeatures>itemFeaturesList=[
  ItemFeatures(image: AssetImages.swimming, name: "مسبح خارجي"),
  ItemFeatures(image: AssetImages.wifi, name: "واي فاي"),
  ItemFeatures(image: AssetImages.member, name: "10 أشخاص"),
  ItemFeatures(image: AssetImages.play, name: "العاب أطفال"),
  ItemFeatures(image: AssetImages.bool, name: "مسبح مدفئ"),
  ItemFeatures(image: AssetImages.billiards, name: "طاولة بليادرو"),
  ItemFeatures(image: AssetImages.tennis, name: "ملعب تنس"),
];
List<ItemFeatures>itemFeatureList2=[
  ItemFeatures(image: AssetImages.cars, name: "مواقف خاصة"),
  ItemFeatures(image: AssetImages.garden, name: "حديقة لعب"),
  ItemFeatures(image: AssetImages.airCanditioning, name: "جهاز تكييف"),
  ItemFeatures(image: AssetImages.pond, name: "بركة أطفال"),
  ItemFeatures(image: AssetImages.football, name: "ملعب كرة قدم"),
  ItemFeatures(image: AssetImages.basketball, name: "ملعب كرة سلة"),
];