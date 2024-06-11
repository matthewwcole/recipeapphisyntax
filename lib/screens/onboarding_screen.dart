import 'package:flutter/material.dart';
import 'package:recipeapphisyntax/constants/images_path.dart';
import 'package:recipeapphisyntax/screens/home.dart';
import 'package:recipeapphisyntax/theme/pallete.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: h,
          width: w,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  child: Container(
                    height: h * .79,
                    width: w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              ImagesPath.onBoarding,
                            ),
                            fit: BoxFit.cover)),
                  )),
              Center(
                child: Image.asset(ImagesPath.onBoardingtitle),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: h * .250,
                  width: w,
                  decoration: const BoxDecoration(
                    color: Pallete.whiteColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "It's Kraut'n Time!",
                          style: TextStyle(
                            fontSize: w * .06,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: h * .01),
                        const Text(
                          'The Secret is the Kraut',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(height: h * .032),
                        SizedBox(
                          width: w * .8,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Home()));
                              },
                              child: const Text(
                                "Get Kraut'n",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
