import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(186, 242, 235, 1),
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
                backgroundColor: Color.fromRGBO(245, 245, 245, 1),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Olá, Luciana',
              style: TextStyle(
                color: Color.fromRGBO(83, 78, 78, 1),
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
              color: Color.fromRGBO(83, 78, 78, 1),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.menu,
            color: Color.fromRGBO(83, 78, 78, 1),
          ),
          SizedBox(
            width: 28,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 435,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(186, 242, 235, 1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(207),
            ),
          ),
        ),
      ),
    );
  }
}
