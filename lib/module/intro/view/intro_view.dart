import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui/core.dart';
import 'package:flutter_slicing_ui/core/theme/theme_config.dart';
import 'package:flutter_slicing_ui/core/widget/button/button.dart';
import '../controller/intro_controller.dart';

class IntroView extends StatefulWidget {
  const IntroView({Key? key}) : super(key: key);

  Widget build(context, IntroController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey[100],
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /*
              TODO: Implement this @ controller
              int currentIndex = 0;
              final CarouselController carouselController = CarouselController();
              */
              Builder(builder: (context) {
                List<Map<String, dynamic>> introItems = [
                  {
                    "photo":
                        "https://img.freepik.com/free-vector/flat-creativity-concept-illustration_52683-64279.jpg?w=740&t=st=1692762500~exp=1692763100~hmac=9b300dd1728363d4bac6b26a13679bb83e2465469f083d6201eb3a872e8c46ba",
                    "title": "Intro 1",
                    "description":
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  },
                  {
                    "photo":
                        "https://img.freepik.com/free-vector/internship-job-training-illustration_23-2148751280.jpg?w=740&t=st=1692762545~exp=1692763145~hmac=e5d3e7c959168aed6c6351164c2e4ace88e16581ac12ff0d5a9c590eb276f902",
                    "title": "Intro 2",
                    "description":
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  },
                  {
                    "photo":
                        "https://img.freepik.com/free-vector/blogging-concept-illustration_114360-1038.jpg?w=740&t=st=1692762587~exp=1692763187~hmac=8af5a991cdbb32b7ae908822306ea9475ffaf72f58bf68c81c330bfa34b6479d",
                    "title": "Intro 3",
                    "description":
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  },
                ];

                return Column(
                  children: [
                    CarouselSlider(
                      carouselController: controller.carouselController,
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height * 0.75,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0,
                        onPageChanged: (index, reason) {
                          controller.currentIndex = index;
                          controller.setState(() {});
                        },
                      ),
                      items: introItems.map((item) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Card(
                              elevation: 8.0,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 0.0),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(6.0),
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            item["photo"],
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(16.0),
                                    color: Colors.white,
                                    width: MediaQuery.of(context).size.width,
                                    child: Center(
                                      child: Text(
                                        item["title"],
                                        style: const TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(16.0),
                                    color: Colors.white,
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      item["description"],
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: introItems.asMap().entries.map((entry) {
                        bool isSelected = controller.currentIndex == entry.key;
                        return GestureDetector(
                          onTap: () => controller.carouselController
                              .animateToPage(entry.key),
                          child: Container(
                            width: isSelected ? 40 : 6.0,
                            height: 6.0,
                            margin: const EdgeInsets.only(
                              right: 6.0,
                              top: 12.0,
                            ),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? primaryColor
                                  : const Color(0xff3c3e40),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                );
              }),
              QButton(
                label: "Next",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<IntroView> createState() => IntroController();
}
