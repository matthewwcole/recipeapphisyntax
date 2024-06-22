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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "It's Kraut'n Time!",
                          style: TextStyle(
                            fontSize: w * .06,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'The Secret is the Kraut!',
                          style: TextStyle(
                              fontSize: w * .03, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          width: w * .8,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Home()));
                              },
                              child: Text(
                                "Get Kraut'n",
                                style: TextStyle(
                                    fontSize: w * .03,
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
