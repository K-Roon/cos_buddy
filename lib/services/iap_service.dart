import '../core/constants/app_constants.dart';

class IapService {
  IapService(this._ref);
  // ignore: unused_field
  final Object _ref;

  bool get isPremiumUser => false; // 코스버디 프리미엄 비활성화 중

  Future<void> initialize() async {
    if (!AppConstants.isPremiumEnabled) return;
    // TODO: 코스버디 프리미엄 활성화 시 in_app_purchase 구현
  }
}