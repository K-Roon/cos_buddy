import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'router.dart';
import 'theme.dart';
import '../shared/providers/service_providers.dart';

class CosBuddyApp extends ConsumerStatefulWidget {
  const CosBuddyApp({super.key});

  @override
  ConsumerState<CosBuddyApp> createState() => _CosBuddyAppState();
}

class _CosBuddyAppState extends ConsumerState<CosBuddyApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(fcmServiceProvider).initialize();
      if (mounted) {
        await ref.read(updateServiceProvider).checkForUpdate(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'CosBuddy',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}