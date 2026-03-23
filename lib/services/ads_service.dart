import 'dart:io';

import 'package:cos_buddy/services/iap_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdsService {
  late BannerAd _bannerAd;
  bool _isBannerLoaded = false;

  /// AdMob 광고 단위 ID
  /// TODO: 실제 배포 전 교체 필요
  static String _bannerAdUnitId = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/6300978111' // 테스트 ID
      : 'ca-app-pub-3940256099942544/2934735716'; // 테스트 ID

  Future<void> initialize() async {
    await MobileAds.instance.initialize();
  }

  void loadBannerAd({required Function onLoaded}) {
    /// 프리미엄 사용자인 경우, 광고를 불러오지 아니합니다.
    final iapService = GetIt.I<IAPService>();
    if (iapService.isPremiumUser) return;

    _bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: _bannerAdUnitId,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          _isBannerLoaded = true;
          onLoaded();
        },
      ),
      request: const AdRequest(),

    );
  }

  Widget buildBannerWidget() {
    if (!_isBannerLoaded) return const SizedBox.shrink();
    return SizedBox(height: 50,
    child: AdWidget(ad: _bannerAd),);
  }

  void dispose() {
    _bannerAd.dispose();
  }
}
