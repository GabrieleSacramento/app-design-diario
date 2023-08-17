import 'package:design_diario/src/Presentation/home/pages/home_page.dart';
import 'package:design_diario/src/Presentation/home/widgets/article_carousel.dart';
import 'package:design_diario/src/Presentation/home/widgets/user_card_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DesignDiarioApp extends StatelessWidget {
  const DesignDiarioApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.purple,
            brightness: Brightness.light,
            accentColor: Colors.blue,
            cardColor: Colors.amber,
            backgroundColor: Colors.white,
          ),
        ),
        routes: {
          "/": (context) => const HomePage(
                articleCarousel: ArticleCarousel(),
                userCardCarousel: UserCardCarousel(),
              ),
          // BlocProvider(
          //       create: (context) => setup.get<UserAuthCubit>(),
          //       child: LoginPage(userAuthCubit: setup.get<UserAuthCubit>()),
          //     ),
          // "/homePage": (context) => const HomePage(
          //       articleCarousel: ArticleCarousel(),
          //     ),
        },
      ),
    );
  }
}
