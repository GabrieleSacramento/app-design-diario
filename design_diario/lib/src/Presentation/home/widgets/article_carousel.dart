import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../theme/color_schemes.g.dart';
import 'article_card_widget.dart';

class ArticleCarousel extends StatefulWidget {
  const ArticleCarousel({
    super.key,
  });

  @override
  State<ArticleCarousel> createState() => _ArticleCarouselState();
}

class _ArticleCarouselState extends State<ArticleCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        ArticleCardWidget(
          articleCardImage: Container(
            width: 258.w,
            height: 172.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/article6.jpg',
                  ),
                  fit: BoxFit.fitWidth),
              // color: Colors.amberAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Icon(
                  Icons.favorite_border,
                  color: lightColorScheme.onPrimary,
                ),
              ),
            ),
          ),
          articleUserImage: const SizedBox(
            width: 24,
            height: 24,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile4.jpg'),
              // backgroundColor: Color.fromRGBO(245, 245, 245, 1),
            ),
          ),
          articleUserName: Text(
            'Caique Fonseca',
            style: TextStyle(
              // color: const Color.fromRGBO(83, 78, 78, 1),
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 12.sp,
            ),
          ),
          isSmall: true,
          articleCardTitle: Text(
            'Uma lista abrangente (e honesta) de clichês de UX',
            style: TextStyle(
              // color: const Color.fromRGBO(83, 78, 78, 1),
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 16.sp,
            ),
          ),
        ),
        ArticleCardWidget(
          articleCardImage: Container(
            width: 258.w,
            height: 172.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/article5.jpg',
                  ),
                  fit: BoxFit.fitWidth),
              // color: Colors.amberAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Icon(
                  Icons.favorite_border,
                  color: lightColorScheme.onPrimary,
                ),
              ),
            ),
          ),
          articleUserImage: const SizedBox(
            width: 24,
            height: 24,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile1.jpg'),
              // backgroundColor: Color.fromRGBO(245, 245, 245, 1),
            ),
          ),
          articleUserName: Text(
            'Antonio Caldas',
            style: TextStyle(
              // color: const Color.fromRGBO(83, 78, 78, 1),
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 12.sp,
            ),
          ),
          isSmall: true,
          articleCardTitle: Text(
            'Uma lista abrangente (e honesta) de clichês de UX',
            style: TextStyle(
              // color: const Color.fromRGBO(83, 78, 78, 1),
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 16.sp,
            ),
          ),
        ),
        ArticleCardWidget(
          articleCardImage: Container(
            width: 258.w,
            height: 172.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/article4.jpg',
                  ),
                  fit: BoxFit.fitWidth),
              // color: Colors.amberAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Icon(
                  Icons.favorite_border,
                  color: lightColorScheme.onPrimary,
                ),
              ),
            ),
          ),
          isSmall: true,
          articleUserImage: const SizedBox(
            width: 24,
            height: 24,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile5.jpg'),
              // backgroundColor: Color.fromRGBO(245, 245, 245, 1),
            ),
          ),
          articleUserName: Text(
            'Tayná Ferreira',
            style: TextStyle(
              // color: const Color.fromRGBO(83, 78, 78, 1),
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 12.sp,
            ),
          ),
          articleCardTitle: Text(
            'Uma lista abrangente (e honesta) de clichês de UX',
            style: TextStyle(
              // color: const Color.fromRGBO(83, 78, 78, 1),
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 16.sp,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        viewportFraction: 0.73,
        padEnds: false,
        aspectRatio: 1.35 / 0.9,
        enableInfiniteScroll: false,
      ),
    );
  }
}
