import 'package:carousel_slider/carousel_slider.dart';
import 'package:design_diario/src/Presentation/home/widgets/user_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserCardCarousel extends StatefulWidget {
  const UserCardCarousel({
    super.key,
  });

  @override
  State<UserCardCarousel> createState() => _UserCardCarouselState();
}

class _UserCardCarouselState extends State<UserCardCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        UserCardWidget(
          userCoverProfile: Container(
            height: 72,
            width: 165,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/cover1.jpg',
                ),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
          ),
          userImage: SizedBox(
            width: 64.h,
            height: 64.h,
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile1.jpg'),
              backgroundColor: Color.fromRGBO(245, 245, 245, 1),
            ),
          ),
        ),
        UserCardWidget(
          userCoverProfile: Container(
            height: 72,
            width: 165,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/cover3.jpg',
                ),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
          ),
          userImage: SizedBox(
            width: 64.h,
            height: 64.h,
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile2.jpg'),
              backgroundColor: Color.fromRGBO(245, 245, 245, 1),
            ),
          ),
        ),
        UserCardWidget(
          userCoverProfile: Container(
            height: 72,
            width: 165,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/cover2.jpg',
                ),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
          ),
          userImage: SizedBox(
            width: 64.h,
            height: 64.h,
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile3.jpg'),
              backgroundColor: Color.fromRGBO(245, 245, 245, 1),
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        viewportFraction: 0.44,
        padEnds: false,
        aspectRatio: 1.50.sp / 0.7.sp,
        enableInfiniteScroll: false,
      ),
    );
  }
}
