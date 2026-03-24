import 'dart:io';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../core/constants/app_constants.dart';
import '../shared/widgets/force_update_dialog.dart';

class UpdateService {
  Future<void> checkForUpdate(BuildContext context) async {
    final info       = await PackageInfo.fromPlatform();
    final current    = info.version;
    final minVersion = await _fetchMinVersion();

    if (_isUpdateRequired(current, minVersion)) {
      if (context.mounted) {
        await showDialog(
          context:          context,
          barrierDismissible: false,
          builder: (_) => ForceUpdateDialog(onUpdate: _openStore),
        );
      }
    }
  }

  // TODO: GET /api/config/min-version 으로 교체
  Future<String> _fetchMinVersion() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return '1.0.0';
  }

  bool _isUpdateRequired(String current, String min) {
    List<int> parse(String v) =>
        v.split('.').map((e) => int.tryParse(e) ?? 0).toList();

    final c = parse(current);
    final m = parse(min);

    for (int i = 0; i < 3; i++) {
      final cv = i < c.length ? c[i] : 0;
      final mv = i < m.length ? m[i] : 0;
      if (cv < mv) return true;
      if (cv > mv) return false;
    }
    return false;
  }

  Future<void> _openStore() async {
    final uri = Platform.isAndroid
        ? Uri.parse(
        'https://play.google.com/store/apps/details?id=${AppConstants.androidPackageName}')
        : Uri.parse(
        'https://apps.apple.com/app/id${AppConstants.iosAppId}');

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}