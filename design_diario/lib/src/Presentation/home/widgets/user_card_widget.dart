import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserCardWidget extends StatelessWidget {
  final Widget userCoverProfile;
  final Widget userImage;
  const UserCardWidget(
      {super.key, required this.userImage, required this.userCoverProfile});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 32.w),
      height: 222.h,
      width: 165.w,
      decoration: const BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              userCoverProfile,
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(child: userImage),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                const Color.fromRGBO(24, 211, 190, 1),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            child: const Text('Seguir'),
          ),
        ],
      ),
    );
  }
}
