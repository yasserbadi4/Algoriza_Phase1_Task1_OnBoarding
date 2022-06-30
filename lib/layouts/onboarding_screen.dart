import 'package:flutter/material.dart';
import 'package:internship_task1/components/Buttons.dart';
import 'package:internship_task1/layouts/login_screen.dart';
import 'package:internship_task1/layouts/signup_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingList {
  final String? image;
  final String? text1;
  final String? text2;

  //final String? subTitle;

  OnBoardingList({
    @required this.image,
    @required this.text1,
    @required this.text2,
    //@required this.subTitle,
  });
}

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var pageController = PageController();

  List<OnBoardingList> boardingList = [
    OnBoardingList(
      image: 'assets/images/on_boarding1.PNG',
      text1: 'Buy Any food from your favorite restaurant',
      text2:
          'We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected',
    ),
    OnBoardingList(
      image: 'assets/images/on_boarding2.PNG',
      text1: 'Get food delivery to your doorstep ASAP',
      text2:
          'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skip',
              style: TextStyle(color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    buildOnBoardingItem(boardingList[index]),
                itemCount: boardingList.length,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: boardingList.length,
              effect: const ExpandingDotsEffect(
                dotColor: Colors.grey,
                activeDotColor: Colors.blueAccent,
                dotHeight: 10,
                expansionFactor: 4,
                dotWidth: 10,
                spacing: 5,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            MyMaterialButton(
              inputText: 'Get Started',
              function: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t Have an Account',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  SignUpScreen()),
                    );
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOnBoardingItem(OnBoardingList myList) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //PageView.builder(itemBuilder: (context, index) => )
          Expanded(
              child: Image(
            image: AssetImage('${myList.image}'),
            height: 300,
          )),
          const SizedBox(
            height: 10,
          ),

          Text(
            '${myList.text1}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            '${myList.text2}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
}
