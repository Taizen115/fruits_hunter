import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdManager {

  BannerAd? bannerAd;

  Future<void> initAdmob() {
    return MobileAds.instance.initialize();
  }

  void initBannerAd() {
    bannerAd = BannerAd(
        adUnitId: bannerAdUnitId,
        size: AdSize.banner,
        request: AdRequest(),
      listener: BannerAdListener(),
    );
  }

  void loadBannerAd(){
    bannerAd?.load();
  }

  Future<void> disposeBannerAd() async {
    await bannerAd?.dispose();
  }


  static String get appId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3364901739591913~8245503054";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3364901739591913~6365445179";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3364901739591913/7771060029";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3364901739591913/2518733344";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  // static String get interstitialAdUnitId {
  //   if (Platform.isAndroid) {
  //     return "ca-app-pub-3940256099942544/1033173712";
  //   } else if (Platform.isIOS) {
  //     return "ca-app-pub-3940256099942544/4411468910";
  //   } else {
  //     throw new UnsupportedError("Unsupported platform");
  //   }
  // }
  //
  // static String get rewardedAdUnitId {
  //   if (Platform.isAndroid) {
  //     return "ca-app-pub-3940256099942544/5224354917";
  //   } else if (Platform.isIOS) {
  //     return "ca-app-pub-3940256099942544/1712485313";
  //   } else {
  //     throw new UnsupportedError("Unsupported platform");
  //   }
  // }
}