import 'package:flutter/material.dart';
import '/common/Widgets/app_button.dart';
import '/common/Widgets/app_text_field.dart';
import '/common/Widgets/gradient_header.dart';
import '/screens/Main/main.dart';
import '/utils/app_colors.dart';
import '/utils/font_styles.dart';

class SignUp extends StatelessWidget {
  static const String routeName = 'signup';
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildHeader(context),
          _buildForm(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return AppHeaderGradient(
      fixedHeight: MediaQuery.of(context).size.height * .25,
      isProfile: false,
      text: 'Profile Info',
    );
  }

  Widget _buildForm(BuildContext context) {
    return Form(
        child: Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              showModalSheet(context);
            },
            child: const CircleAvatar(
              radius: 50.0,
              backgroundColor: AppColors.lightGray,
            ),
          ),
          const Text('Upload photo'),
          const SizedBox(height: 20.0),
          AppTextField(
            labelText: 'First Name',
            onTap: () {},
          ),
          const SizedBox(height: 20.0),
          AppTextField(
            labelText: 'Surname',
            onTap: () {},
          ),
          const SizedBox(height: 20.0),
          AppTextField(
            labelText: 'Email',
            onTap: () {},
          ),
          const SizedBox(height: 20.0),
          AppTextField(
            labelText: 'Address',
            onTap: () {},
          ),
          const SizedBox(height: 20.0),
          AppButton.button(
              text: 'Save',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .06,
              color: AppColors.secondary,
              onTap: () {
                Navigator.pushReplacementNamed(context, Main.routeName);
              }),
          const SizedBox(height: 10.0),
          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Main.routeName);
            },
            child: Text(
              'Skip',
              style: FontStyles.montserratBold17().copyWith(color: Colors.grey),
            ),
          ),
        ],
      ),
    ));
  }

  showModalSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.settings_rounded),
                  title: const Text('From gallery'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.camera_alt_outlined),
                  title: const Text('From Camera'),
                ),
              )
            ],
          );
        });
  }
}
