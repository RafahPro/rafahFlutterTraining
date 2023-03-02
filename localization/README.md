# localization



## خطوات التشغيل

## اضافة
flutter_localizations:
sdk: flutter

إلى ملف pubspec.yaml



## اضافة
import 'package:flutter_localizations/flutter_localizations.dart';
في الملف main.dart

## اضافة
localizationsDelegates:  [
GlobalMaterialLocalizations.delegate,
GlobalCupertinoLocalizations.delegate,
GlobalWidgetsLocalizations.delegate,
],
supportedLocales: [
const Locale('en', 'US'), // English
const Locale('ar', 'SA'), // Arabic
],

في الملف main.dart

