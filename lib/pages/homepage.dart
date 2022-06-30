import 'package:flutter/material.dart';
import 'package:task1/components/button1.dart';
import 'package:task1/components/home.dart';
import 'package:task1/pages/signin.dart';

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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      minWidth: 60,
                      height: 35,
                      color: const Color.fromARGB(255, 236, 208, 217),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: const Text("skip"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '7',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.orange,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      'krave',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.teal,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                SizedBox(
                  height: 550,
                  child: PageView(
                      controller: pageController,
                      onPageChanged: (ind) {
                        updatePageState(ind);
                        setState(() {
                          _currentIndex = ind;
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
                          image: 'assets/images/sammy.png',
                          text: mainParagraph[1],
                          second: secParagraph[1],
                        )
                      ]),
                ),
                MyButton(
                    myText: 'Get Started',
                    myFunc: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account ?",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()),
                        );
                      },
                      child: const Text('Sign Up',
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 20,
                              fontWeight: FontWeight.w700)),
                    )
                  ],
                )
              ],
            )));
  }
}
