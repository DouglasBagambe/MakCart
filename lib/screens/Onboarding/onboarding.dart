import 'package:flutter/material.dart';
import '/common/Widgets/app_button.dart';
import '/common/Widgets/app_title.dart';
import '/screens/Login/phone_screen.dart';
import '/utils/app_colors.dart';
import '/utils/font_styles.dart';

class OnBoarding extends StatelessWidget {
  static const String routeName = 'onboarding';
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight,
          child: Stack(
            children: [
              Image(
                image: const AssetImage('assets/onBoarding/onboarding.gif'),
                color: const Color.fromRGBO(42, 3, 75, 0.45),
                colorBlendMode: BlendMode.srcOver,
                fit: BoxFit.fill,
                height: screenHeight * 0.75,
                width: screenWidth,
              ),
              Positioned(
                bottom: screenHeight * 0.24,
                right: 0,
                child: Container(
                  width: screenWidth * 0.65,
                  height: screenHeight * 0.13,
                  decoration: BoxDecoration(
                      color: AppColors.secondary.withOpacity(0.7),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(150.0),
                          topRight: Radius.circular(0.0))),
                ),
              ),
              Positioned(
                bottom: 0.0,
                child: Container(
                  height: screenHeight * 0.40,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    backgroundBlendMode: BlendMode.srcOver,
                    gradient: LinearGradient(
                        colors: [AppColors.primaryLight, AppColors.primaryDark],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        stops: [0, 1]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      getAppTitle(),
                      getAppDesc(),
                      AppButton.button(
                        text: 'Log In',
                        color: AppColors.secondary,
                        width: 220.0,
                        height: 45.0,
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, Login.routeName);
                        },
                      ),
                      AppButton.button(
                        text: 'Sign Up',
                        color: AppColors.secondary,
                        width: 220.0,
                        height: 45.0,
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, Login.routeName);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getAppTitle() {
    return AppTitle(
      fontStyle: FontStyles.montserratExtraBold31(),
      marginTop: 25.0,
    );
  }

  Widget getAppDesc() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      child: Text(
        'Welcome to Makcart Online Shopping Mall',
        style:
            FontStyles.montserratRegular14().copyWith(color: AppColors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
