import 'package:flujo/src/widget/responsive.dart';
import 'package:flutter/material.dart';

import '../model/onboard_model.dart';
import '../widget/slider_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    //debugging svg picture behaviour
    setState(() {});
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1.0.defaultHeight(),
          child: PageView.builder(
            itemCount: onboardContents.length,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _pageIndex = index;
              });
            },
            itemBuilder: ((context, index) => OnboardingContent(
                image: onboardContents[index].image,
                title: onboardContents[index].title,
                description: onboardContents[index].description,
                pageIndex: _pageIndex)),
          ),
        ),
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  const OnboardingContent(
      {required this.image,
      required this.title,
      required this.description,
      required this.pageIndex,
      Key? key})
      : super(key: key);
  final String image, title, description;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return pageIndex == 0.0
        ? Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 820.h()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 80.h(),
                          width: 80.w(),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 29, 237, 152),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        SizedBox(
                          width: 10.w(),
                        ),
                        Column(
                          children: const [
                            Text(
                              "NEURAL",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "TRAINER",
                              style: TextStyle(
                                color: Color.fromARGB(255, 29, 237, 152),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
                    SizedBox(height: 350.h()),
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 13),
                    ),
                    SizedBox(height: 10.h()),
                    Text(
                      description,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 29, 237, 152),
                          fontStyle: FontStyle.italic,
                          fontSize: 25),
                    ),
                    SizedBox(height: 150.h()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          onboardContents.length,
                          (index) => Padding(
                            padding: EdgeInsets.only(
                              right: 20.w(),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child:
                                  SlideIndicator(isActive: index == pageIndex),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20.h(),
                left: 0.13.defaultWidth(),
                child: Container(
                  width: 800.w(),
                  height: 120.h(),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("iniciar sesión"),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27))),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 29, 237, 152)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black)),
                  ),
                ),
              )
            ],
          )
        : Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 200.h(),
                  ),
                  const Text(
                    "#MOVEYOURMIND",
                    style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 850.h()),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 237, 152),
                    ),
                  ),
                  SizedBox(
                    height: 40.h(),
                  ),
                  SizedBox(
                    width: 750.w(),
                    child: Text(
                      description,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 300.h(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        onboardContents.length,
                        (index) => Padding(
                          padding: EdgeInsets.only(
                            right: 20.w(),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: SlideIndicator(isActive: index == pageIndex),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50.h(),
                  ),
                ],
              ),
              Positioned(
                bottom: 20.h(),
                left: 0.13.defaultWidth(),
                child: Container(
                  width: 800.w(),
                  height: 120.h(),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("iniciar sesión"),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27))),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 29, 237, 152)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black)),
                  ),
                ),
              )
            ],
          );
  }
}
