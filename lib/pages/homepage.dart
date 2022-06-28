import 'package:flutter/material.dart';
import 'package:task1/components/home.dart';

List<String> mainParagraph = [
  'Get food delivery to your doorstop asap',
  'Buy Any Food from your favourite restaurant'
];
List<String> secParagraph = [
  'we have young and professional delivery team that will bring your food as soon as possible to your doorstep',
  'we are constantly adding your favourite restaurant throughout the territory and around your area carefully selected'
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final PageController pageController = PageController();

  updatePageState(index) {
    if (index == 1) {
      pageController.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    }
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text("skip")),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text('7krave')],
                ),
                // Image.asset('assets/images/bike1.png'),
                SizedBox(
                  height: 700,
                  child: PageView(
                      controller: pageController,
                      onPageChanged: (num) {
                        updatePageState(num);
                        setState(() {
                          _currentIndex = num;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                      children: [
                        HomeComponent(
                          image: 'assets/images/bike1.png',
                          text: mainParagraph[0],
                          second: secParagraph[0],
                        ),
                        HomeComponent(
                          image: 'assets/images/bike1.png',
                          text: mainParagraph[1],
                          second: secParagraph[1],
                        )
                      ]),
                )
              ],
            )));
  }
}
