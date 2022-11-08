import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/common/theme/app_theme.dart';
import 'package:my_portfolio/common/translations/localization_service.dart';
import 'package:my_portfolio/data/api/notion_api.dart';
import 'package:my_portfolio/data/repositories/notion/inotion_repository.dart';
import 'package:my_portfolio/data/repositories/notion/notion_repository.dart';
import 'package:my_portfolio/data/services/theme_service.dart';
import 'package:my_portfolio/routes/app_pages.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  await dotenv.load(fileName: "assets/notion.env");

  Get.lazyPut(() => NotionApi());
  Get.put<INotionRepository>(NotionRepository(notionApi: Get.find()),
      permanent: true);

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
    initialRoute: Routes.main,
    initialBinding: BindingsBuilder(() {}),
    builder: EasyLoading.init(),
  );
  runApp(getMaterialApp);
}
