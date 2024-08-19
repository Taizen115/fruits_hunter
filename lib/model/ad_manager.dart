import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdManager {

  //このコードは、スマホアプリの中に広告を表示するためのプログラムです。
  // Googleの広告サービスであるAdMobを使って、アプリの中に広告を表示します。

  //bannerAd: 広告そのものが入る箱です。
  // initAdmob(): 広告を表示するための準備をする関数です。
  // initBannerAd(): 広告を作る関数です。
  // loadBannerAd(): 広告を読み込む関数です。
  // disposeBannerAd(): 広告を消す関数です。
  // appId: アプリのIDを入れる箱です。
  // bannerAdUnitId: 広告のIDを入れる箱です。

  // 難しい言葉
  // BannerAd: 横長の広告のこと
  // AdRequest: 広告をリクエストするためのもの
  // BannerAdListener: 広告に関する情報を聞くためのもの
  // Platform: スマホの種類（AndroidかiOSか）のこと

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