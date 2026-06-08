import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hajj_app/Screens/manasek_screen.dart';
import 'package:provider/provider.dart';
import 'Screens/default_screen.dart';
import 'core/Thems/app_theme.dart';
import 'providers/sound_provider.dart';
import 'screens/default_screen.dart' hide DefaultScreen;

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => SoundProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      supportedLocales: const [Locale('ar', 'SA')],
      locale: const Locale('ar', 'SA'),
      builder: (context, child) {
      return Directionality(textDirection: TextDirection.rtl, child: child!);
      },
      home: DefaultScreen(),
    );

  }
}
