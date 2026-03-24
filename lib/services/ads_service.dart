import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../shared/providers/service_providers.dart';

class AdsService {
  AdsService(this._ref);

  final Ref _ref;

  BannerAd? _banner;
  bool _loaded = false;

  bool get isBannerLoaded => _loaded;

  /// 실제로 사용하는 광고 값입니다.
  // static String get _unitId => Platform.isAndroid
  //     ? 'ca-app-pub-2748600890197597/1959579030'
  //     : 'ca-app-pub-2748600890197597/8636668023';

  /// 테스트용 광고 값입니다.
  static String get _unitId => Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-3940256099942544/2934735716';

  void loadBanner({required VoidCallback onLoaded}) {
    final isPremium = _ref.read(iapServiceProvider).isPremiumUser;
    if (isPremium) return;

    _banner = BannerAd(
      adUnitId: _unitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          _loaded = true;
          onLoaded();
        },
        onAdFailedToLoad: (ad, _) => ad.dispose(),
      ),
    )..load();
  }

  Widget buildBanner() {
    if (!_loaded || _banner == null) return const SizedBox.shrink();
    return SizedBox(
      height: _banner!.size.height.toDouble(),
      child: AdWidget(ad: _banner!),
    );
  }

  void dispose() => _banner?.dispose();
}
