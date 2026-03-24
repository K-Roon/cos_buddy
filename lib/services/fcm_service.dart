import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../features/auth/domain/models/user_device_model.dart';
import '../shared/providers/service_providers.dart';
import '../app/router.dart';

@pragma('vm:entry-point')
Future<void> _bgHandler(RemoteMessage _) async {}

class FcmService {
  FcmService(this._ref);

  final Ref _ref;

  final _messaging = FirebaseMessaging.instance;
  final _localNotifications = FlutterLocalNotificationsPlugin();

  static const _channel = AndroidNotificationChannel(
    'cosbuddy_high',
    'CosBuddy 알림',
    description: '코스버디 주요 알림',
    importance: Importance.high,
  );

  Future<void> initialize() async {
    FirebaseMessaging.onBackgroundMessage(_bgHandler);

    await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    // Android 알림 채널 생성 — 제네릭을 변수로 분리
    final AndroidFlutterLocalNotificationsPlugin? androidImpl =
        _localNotifications.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();
    await androidImpl?.createNotificationChannel(_channel);

    await _localNotifications.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        iOS: DarwinInitializationSettings(),
      ),
      onDidReceiveNotificationResponse: _onTap,
    );

    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    await _setupToken();
    _setupListeners();
  }

  Future<void> _setupToken() async {
    final token = await _messaging.getToken();
    if (token != null) await _register(token);
    _messaging.onTokenRefresh.listen(_register);
  }

  Future<void> _register(String token) async {
    try {
      final info = await PackageInfo.fromPlatform();
      await _ref.read(deviceRepositoryProvider).registerFcmToken(
            token: token,
            platform: Platform.isAndroid
                ? DevicePlatform.android
                : DevicePlatform.ios,
            appVersion: info.version,
          );
    } catch (e) {
      debugPrint('[FCM] 토큰 등록 실패: $e');
    }
  }

  Future<void> deactivate() async {
    final token = await _messaging.getToken();
    if (token == null) return;
    await _ref.read(deviceRepositoryProvider).deactivateFcmToken(token: token);
    await _messaging.deleteToken();
  }

  void _setupListeners() {
    FirebaseMessaging.onMessage.listen(_showLocal);
    FirebaseMessaging.onMessageOpenedApp.listen(_route);
    _messaging.getInitialMessage().then((m) {
      if (m != null) _route(m);
    });
  }

  Future<void> _showLocal(RemoteMessage msg) async {
    final n = msg.notification;
    if (n == null) return;
    await _localNotifications.show(
      n.hashCode,
      n.title,
      n.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          _channel.id,
          _channel.name,
          channelDescription: _channel.description,
          importance: Importance.high,
          priority: Priority.high,
        ),
        iOS: const DarwinNotificationDetails(),
      ),
      payload: msg.data['route'],
    );
  }

  void _route(RemoteMessage msg) {
    final route = msg.data['route'];
    if (route != null) _ref.read(routerProvider).push(route);
  }

  void _onTap(NotificationResponse r) {
    if (r.payload != null) _ref.read(routerProvider).push(r.payload!);
  }
}
