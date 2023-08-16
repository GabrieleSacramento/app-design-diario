import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/design_diario_constants.dart';
import '../widgets/article_card_widget.dart';
import '../widgets/article_carousel.dart';
import '../widgets/user_card_carousel.dart';

class HomePage extends StatefulWidget {
  final ArticleCarousel articleCarousel;
  final UserCardCarousel userCardCarousel;
  const HomePage(
      {super.key,
      required this.articleCarousel,
      required this.userCardCarousel});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController;

  final List<Tab> _tabs = [
    Tab(
      child: Text(
        'Para você',
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
    Tab(
      child: Text(
        'UI/UX',
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
    Tab(
      child: Text(
        'Design gráfico',
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
    Tab(
      child: Text(
        'Design de produção',
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: const Color.fromRGBO(186, 242, 235, 1),
        elevation: 0,
        titleSpacing: 28,
        title: const Row(
          children: [
            SizedBox(
              width: 32,
              height: 32,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=688&q=80'),
                // backgroundColor: Color.fromRGBO(245, 245, 245, 1),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Olá, Luciana',
              style: TextStyle(
                // color: Color.fromRGBO(83, 78, 78, 1),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.arrow_forward_ios_sharp,
              size: 8,
              // color: Color.fromRGBO(83, 78, 78, 1),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.menu,
            // color: Color.fromRGBO(83, 78, 78, 1),
          ),
          SizedBox(
            width: 28,
          ),
        ],
        bottom: TabBar(
          // indicatorColor: const Color.fromRGBO(245, 190, 35, 1),
          indicatorSize: TabBarIndicatorSize.label,
          // labelColor: const Color.fromRGBO(83, 78, 78, 1),
          // unselectedLabelColor: const Color.fromRGBO(83, 78, 78, 0.4),
          controller: _tabController,
          tabs: _tabs,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 300,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(111),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: widget.articleCarousel,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  DesignDiarioConstants.popular,
                  style: TextStyle(
                    // color: const Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 22.sp,
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 600.h),
                  width: double.maxFinite,
                  height: 450,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(111),
                    ),
                  ),
                ),
                Container(
                  height: 750,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiary,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(111),
                    ),
                  ),
                  child: Column(
                    children: [
                      ArticleCardWidget(
                        articleCardImage: Container(
                          width: 380.w,
                          height: 295.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/article1.jpg',
                              ),
                              fit: BoxFit.fitWidth,
                            ),
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
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                        articleUserImage: const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile1.jpg'),
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
                        isSmall: false,
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
                          width: 380.w,
                          height: 295.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/article2.jpg',
                                ),
                                fit: BoxFit.fill),
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
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                        articleUserImage: const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile5.jpg'),
                            backgroundColor: Color.fromRGBO(245, 245, 245, 1),
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
                        isSmall: false,
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 32.w, top: 32.h),
                          child: Text(
                            DesignDiarioConstants.people,
                            style: TextStyle(
                              // color: const Color.fromRGBO(51, 51, 51, 1),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 22.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 710),
                  child: SizedBox(
                    child: widget.userCardCarousel,
                  ),
                ),
              ],
            ),
            ArticleCardWidget(
              articleCardImage: Container(
                width: 380.w,
                height: 295.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/article3.jpg',
                      ),
                      fit: BoxFit.fill),
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
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
              articleUserImage: const SizedBox(
                width: 24,
                height: 24,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile2.jpg'),
                  // backgroundColor: Color.fromRGBO(245, 245, 245, 1),
                ),
              ),
              articleUserName: Text(
                'Alex Magalhães',
                style: TextStyle(
                  // color: const Color.fromRGBO(83, 78, 78, 1),
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 12.sp,
                ),
              ),
              isSmall: false,
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
                width: 380.w,
                height: 295.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/article4.jpg',
                      ),
                      fit: BoxFit.fill),
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
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
              articleUserImage: const SizedBox(
                width: 24,
                height: 24,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile3.jpg'),
                  // backgroundColor: Color.fromRGBO(245, 245, 245, 1),
                ),
              ),
              articleUserName: Text(
                'Alexadre Brito',
                style: TextStyle(
                  // color: const Color.fromRGBO(83, 78, 78, 1),
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 12.sp,
                ),
              ),
              isSmall: false,
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
            SizedBox(
              height: 50.h,
            )
          ],
        ),
      ),
    );
  }
}
