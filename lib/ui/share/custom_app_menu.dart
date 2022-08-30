import 'package:flutter/material.dart';
import 'package:test_web_app/theme/app_theme.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                _buildLogoContainer(),
                const VerticalDivider(
                  indent: 7,
                  endIndent: 7,
                ),
                _buildTitleAppBar(),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 30, bottom: 30),
                  width: 400,
                  child: TextFormField(
                    expands: false,
                    autofocus: true,
                    validator: (input) {
                      if (input != null && input.isEmpty) return '';
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(242, 242, 242, 1),
                      hintText: 'Search',
                      suffixIcon:
                          Icon(Icons.search, color: AppTheme.secondaryColor),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(232, 232, 232, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(232, 232, 232, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(232, 232, 232, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                  ),
                ),
                SizedBox(width: 50),
                Image.asset('assets/img/icono1.png', width: 30.0, height: 30),
                const SizedBox(width: 10),
                Image.asset(
                  'assets/img/icono2.png',
                  width: 30.0,
                  height: 30,
                ),
                const SizedBox(width: 10),
                Image.asset('assets/img/icono3.png', width: 30.0, height: 30),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(children: [
                    CircleAvatar(
                        radius: 18,
                        backgroundImage:
                            Image.asset('assets/img/avatar.png', width: 20.0)
                                .image),
                    const Icon(Icons.arrow_drop_down_outlined,
                        color: Colors.black)
                  ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  RichText _buildTitleAppBar() {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: 'Wake up ',
          style: TextStyle(
              color: AppTheme.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20)),
      TextSpan(
          text: 'your dreams',
          style: TextStyle(
              color: AppTheme.secondaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20))
    ]));
  }

  Widget _buildLogoContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: AppTheme.backgroundColor,
      child: Column(
        children: [
          Image.asset('assets/img/logo.png', width: 100, height: 80),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'Welcome',
                style: TextStyle(
                    color: AppTheme.primaryColor, fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'dly',
                style: TextStyle(
                    color: AppTheme.secondaryColor,
                    fontWeight: FontWeight.bold))
          ]))
        ],
      ),
    );
  }
}
