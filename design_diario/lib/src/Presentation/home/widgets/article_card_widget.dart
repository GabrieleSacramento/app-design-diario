import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleCardWidget extends StatelessWidget {
  ArticleCardWidget({
    super.key,
    this.isSmall = true,
    required this.articleCardTitle,
    this.articleCardImage,
    this.articleUserImage,
    this.articleUserName,
  });

  final bool isSmall;
  final Widget articleCardTitle;
  final Widget? articleCardImage;
  final Widget? articleUserImage;
  final Widget? articleUserName;

  @override
  Widget build(BuildContext context) {
    return isSmall
        ? Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  articleCardImage!,
                  Padding(
                    padding: EdgeInsets.only(
                      top: 12.h,
                      bottom: 12.h,
                    ),
                    child: articleCardTitle,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 2.w),
                        child: articleUserImage,
                      ),
                      SizedBox(
                        child: articleUserName,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        : Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  articleCardImage!,
                  Padding(
                    padding: EdgeInsets.only(
                      top: 12.h,
                      bottom: 12.h,
                    ),
                    child: articleCardTitle,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 2.w),
                        child: articleUserImage,
                      ),
                      SizedBox(
                        child: articleUserName,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}
