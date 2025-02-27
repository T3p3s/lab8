import 'package:flutter/material.dart';
import 'package:lab8/constants/text_styles_value.dart';
import 'package:lab8/constants/colors.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ru')],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812), 
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: ThemeData(
            textTheme: TextTheme(
              displayLarge: AppTextStyles.px12blue.copyWith(fontSize: 12.sp),
              displayMedium: AppTextStyles.px10blue.copyWith(fontSize: 10.sp),
            ),
          ),
          home: MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home_page_title').tr(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello_text'.tr(),
              style: AppTextStyles.px12blue.copyWith(fontSize: 14.sp),
            ),
            SizedBox(height: 20.h), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.setLocale(Locale('en'));
                  },
                  child: Text(
                    'English',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
                SizedBox(width: 10.w), 
                ElevatedButton(
                  onPressed: () {
                    context.setLocale(Locale('ru'));
                  },
                  child: Text(
                    'Русский',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
