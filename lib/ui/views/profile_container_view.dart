import 'package:flutter/material.dart';
import 'package:test_web_app/theme/app_theme.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: BoxDecoration(
        color: AppTheme.backgroundColor,
        border: Border.all(color: Color.fromRGBO(232, 232, 232, 1)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(232, 232, 232, 1),
            ),
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(width: 3),
                Image.asset('assets/img/picono1.png',
                    width: 40.0, height: 40.0),
                const SizedBox(width: 3),
                Image.asset('assets/img/picono2.png',
                    width: 40.0, height: 40.0),
                const SizedBox(width: 3),
                Image.asset('assets/img/picono3.png',
                    width: 40.0, height: 40.0),
                const SizedBox(width: 3),
                Image.asset('assets/img/picono4.png',
                    width: 40.0, height: 40.0),
              ],
            ),
          ),
          SizedBox(height: 30),
          CircleAvatar(
              radius: 70,
              backgroundImage: Image.asset('assets/img/avatar.png',
                      width: 200.0, height: 200.0)
                  .image),
          SizedBox(height: 10),
          Text('John Doe',
              style: TextStyle(
                  color: AppTheme.textPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          Text('Entrepreneur - PowerLevel 8',
              style: TextStyle(color: AppTheme.textPrimaryColor)),
          SizedBox(height: 20),
          Divider(indent: 30, endIndent: 30),
        ],
      ),
    );
  }
}
