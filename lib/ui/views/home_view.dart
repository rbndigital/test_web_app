import 'package:flutter/material.dart';
import 'package:test_web_app/theme/app_theme.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 50),
      padding: const EdgeInsets.symmetric(horizontal: 0),
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: BoxDecoration(color: AppTheme.backgroundColor),
      child: Column(
        children: [
          Text('Explore your Personal Interests',
              style: TextStyle(
                  color: AppTheme.secondaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24)),
          const SizedBox(height: 20),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomeItemNavBar(
                      image: Image.asset('assets/img/iconoh1.png',
                          width: 50, height: 50),
                      text: 'Growth'),
                  HomeItemNavBar(
                      image: Image.asset('assets/img/iconoh2.png',
                          width: 50, height: 50),
                      text: 'Instant'),
                  HomeItemNavBar(
                      image: Image.asset('assets/img/iconoh3.png',
                          width: 50, height: 50),
                      text: 'Lifestyle'),
                  HomeItemNavBar(
                      image: Image.asset('assets/img/iconoh4.png',
                          width: 50, height: 50),
                      text: 'Inspirational'),
                  HomeItemNavBar(
                      image: Image.asset('assets/img/iconoh5.png',
                          width: 50, height: 50),
                      text: 'Experience'),
                  HomeItemNavBar(
                      image: Image.asset('assets/img/iconoh6.png',
                          width: 50, height: 50),
                      text: 'Together')
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            padding: EdgeInsets.symmetric(horizontal: 250),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.14,
            decoration: BoxDecoration(color: AppTheme.secondaryColor),
            child: Container(
              margin: const EdgeInsets.only(top: 30, left: 30),
              width: 100,
              child: TextFormField(
                expands: false,
                controller: textController,
                autofocus: true,
                validator: (input) {
                  if (input != null && input.isEmpty) return '';
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Find my ActionPowers',
                  suffixIcon:
                      Icon(Icons.search, color: AppTheme.secondaryColor),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 7,
              child: GridView.count(
                  mainAxisSpacing: 1.0,
                  crossAxisSpacing: 1.0,
                  crossAxisCount: 2,
                  padding: const EdgeInsets.all(1),
                  children: [
                    Image.asset('assets/img/itemHome.png'),
                    Image.asset('assets/img/itemHome.png'),
                    Image.asset('assets/img/itemHome.png'),
                    Image.asset('assets/img/itemHome.png'),
                  ])),
        ],
      ),
    );
  }
}

class HomeItemNavBar extends StatelessWidget {
  final String text;
  final Image image;

  const HomeItemNavBar({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 65,
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(color: Color.fromRGBO(245, 245, 245, 1)),
      child: Stack(
        children: [
          Row(
            children: [
              image,
              Text(text,
                  style: TextStyle(
                      color: AppTheme.textPrimaryColor,
                      fontWeight: FontWeight.bold))
            ],
          ),
          Positioned(
            bottom: 0,
            right: 5,
            child: Icon(Icons.arrow_forward_ios,
                color: AppTheme.secondaryColor, size: 14),
          )
        ],
      ),
    );
  }
}
