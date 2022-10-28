import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/common/theme/app_theme.dart';
import 'package:my_portfolio/common/translations/localization_service.dart';
import 'package:my_portfolio/data/services/theme_service.dart';
import 'package:my_portfolio/routes/app_pages.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  var getMaterialApp = GetMaterialApp(
    themeMode: ThemeService().getThemeMode(),
    localizationsDelegates: const [
      GlobalWidgetsLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate
    ],
    supportedLocales: const [
      Locale('en', 'US'),
      Locale('ko', 'KR'),
    ],
    locale: LocalizationService.locale,
    fallbackLocale: LocalizationService.fallbackLocale,
    translations: LocalizationService(),
    localeResolutionCallback: (locale, supportedLocales) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale?.languageCode &&
            supportedLocale.countryCode == locale?.countryCode) {
          return supportedLocale;
        }
      }
      return supportedLocales.first;
    },
    debugShowCheckedModeBanner: false,
    theme: appThemeData,
    getPages: AppPages.pages,
    initialRoute: Routes.intro,
    initialBinding: BindingsBuilder(() {}),
    // builder:
    // // EasyLoading.init(
    // //   builder: (context, child) => ScrollConfiguration(
    // //     behavior: DisableGlowBehavior(),
    // //     child: child!,
    // //   ),
    // )
    // ,
  );
  runApp(getMaterialApp);
}
