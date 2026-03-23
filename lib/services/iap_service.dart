import 'package:in_app_purchase/in_app_purchase.dart';

/// **인앱 구매 서비스**
///
/// 해당 사용자가 프리미엄 구독자인지를 확인합니다.
///
/// [return: bool]
class IAPService {
  state

  const bool isPremiumEnabled = false;

  static const String premiumProductId = 'cosbuddy_premium_monthly';

  final InAppPurchase _iap = InAppPurchase.instance;
  bool _isPremiumUser = false;

  bool get isPremiumUser => _isPremiumUser;

  Future<void> initialize() async {
    if (!isPremiumEnabled) return;

    final available = await _iap.isAvailable();
    if (!available) return;

    // 구매 복원
    await _iap.restorePurchases();

    _iap.purchaseStream.listen((purchases) {
      for (final purchase in purchases) {
        if (purchase.productID == premiumProductId &&
            purchase.status == PurchaseStatus.purchased) {
          _isPremiumUser = true;
        }
      }
    });
  }
}