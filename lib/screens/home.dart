import 'package:flutter/material.dart';
import 'package:todo_list_app/color/colors.dart';

class Home extends StatelessWidget {
   const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color4,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              color: color5,
              size: 30,
            ),
            Container(
              height: 55,
              width: 55,
              child: ClipRRect(
                borderRadius : BorderRadius.circular(20),
                child: Image.asset('assets/images/profile-pic.png',),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Text('This is the Home Screen'),
      ),
    );
  }
}
