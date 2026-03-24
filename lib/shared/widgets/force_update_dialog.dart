import 'package:flutter/material.dart';

class ForceUpdateDialog extends StatelessWidget {
  final VoidCallback onUpdate;
  const ForceUpdateDialog({super.key, required this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: const Text(
          '업데이트 필요',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: const Text(
          '더 나은 서비스를 위해\n최신 버전으로 업데이트해 주세요.',
          textAlign: TextAlign.center,
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          FilledButton(
            onPressed: onUpdate,
            style: FilledButton.styleFrom(
              minimumSize: const Size(200, 48),
            ),
            child: const Text('업데이트 하기'),
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}