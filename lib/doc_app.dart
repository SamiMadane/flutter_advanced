import 'package:flutter/material.dart';
import 'package:flutter_advance/core/routing/app_router.dart';
import 'package:flutter_advance/core/routing/routes.dart';
import 'package:flutter_advance/core/resources/colors_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorsManager.primaryColor,
          scaffoldBackgroundColor: ColorsManager.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen ,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
