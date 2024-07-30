import 'package:ecommerce_app/core/constant/imgasset.dart';

import '../../model/onboardingmodel.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "Choose Product",
      body:
          "We Have a 100k Product, Choose \n Your Product From Our \n E-commerce Shop",
      imgUrl: AppImgAsset.onBoardingImageOne),
  OnBoardingModel(
      title: "Easy & Safe Payment",
      body:
          "Easy Checkout & Safe Payment \n method. Trusted by our Customers \n from all over the world",
      imgUrl: AppImgAsset.onBoardingImageTwo),
  OnBoardingModel(
      title: "Track Your Order",
      body:
          "Best Tracker has been Used For \n Track Your Order. You'll know where \n your product is at the moment",
      imgUrl: AppImgAsset.onBoardingImageThree),
  // OnBoardingModel(
  //     title: "Fast Delivery",
  //     body:
  //         "Reliable And Fast Delivery. We \n Deliver your product the fastest \n way possible",
  //     imgUrl: AppImgAsset.onBoardingImageFour),
];
