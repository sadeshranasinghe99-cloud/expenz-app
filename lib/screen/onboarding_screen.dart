import 'package:expenz/constants/colors.dart';
import 'package:expenz/data/onboarding_data.dart';
import 'package:expenz/screen/onboarding/front_page.dart';
import 'package:expenz/screen/onboarding/shared_screen.dart';
import 'package:expenz/screen/user_data_screen.dart';
import 'package:expenz/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  //page controller

  final PageController _controller = PageController();
  bool showDetailsPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView(
                  controller: _controller,
                  onPageChanged: (index) {
                    setState(() {
                      showDetailsPage = index == 3;
                      print(showDetailsPage);
                    });
                  },
                  children: [
                    FrontPage(),
                    SharedScreen(
                      title: OnboardingData.onboardingDataList[0].title,
                      imageUrl: OnboardingData.onboardingDataList[0].imageUrl,
                      description:
                          OnboardingData.onboardingDataList[0].description,
                    ),
                    SharedScreen(
                      title: OnboardingData.onboardingDataList[1].title,
                      imageUrl: OnboardingData.onboardingDataList[1].imageUrl,
                      description:
                          OnboardingData.onboardingDataList[1].description,
                    ),
                    SharedScreen(
                      title: OnboardingData.onboardingDataList[2].title,
                      imageUrl: OnboardingData.onboardingDataList[2].imageUrl,
                      description:
                          OnboardingData.onboardingDataList[2].description,
                    ),
                  ],
                ),

                //page indecator
                Container(
                  alignment: const Alignment(0, 0.65),
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: WormEffect(
                      activeDotColor: kMainColor,
                      dotColor: kGrey,
                      dotHeight: MediaQuery.of(context).size.height * 0.02,
                      dotWidth: MediaQuery.of(context).size.width * 0.035,
                    ),
                  ),
                ),

                Positioned(
                  bottom: 20,
                  left: 8,
                  right: 8,
                  child: !showDetailsPage
                      ? GestureDetector(
                          onTap: () {
                            _controller.animateToPage(
                              _controller.page!.toInt() + 1,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: CustomButton(
                            buttonColor: kMainColor,
                            buttonName: showDetailsPage
                                ? "Get Started"
                                : "Next",
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UserDataScreen(),
                              ),
                            );
                          },
                          child: CustomButton(
                            buttonColor: kMainColor,
                            buttonName: showDetailsPage
                                ? "Get Started"
                                : "Next",
                          ),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
