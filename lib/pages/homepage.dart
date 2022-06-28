import 'package:flutter/material.dart';
import 'package:task1/components/home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final PageController pageController = PageController();

  updatePageState(index) {
    if (index == 1)
      pageController.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);

    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                Image.asset('assets/images/bike1.png'),
                PageView(
                    controller: pageController,
                    onPageChanged: (num) {
                      setState(() {
                        _currentIndex = num;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                    children: const [
                      HomeComponent(
                          image: 'assets/images/bike1.png', text: 'hellooo1'),
                      HomeComponent(
                          image: 'assets/images/bike1.png', text: 'hellooo2')
                    ])
              ],
            )));
  }
}
