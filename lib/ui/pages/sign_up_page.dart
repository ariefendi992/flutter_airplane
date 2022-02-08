import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';
import 'package:flutter_airplane_v2/ui/widgets/custom_button.dart';
import 'package:flutter_airplane_v2/ui/widgets/custom_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget content() {
      inputName() {
        return const CustomTextFormField(
          title: 'Full Name',
          hintText: 'Your Full Name',
        );
      }

      inputEmail() {
        return const CustomTextFormField(
          title: 'Email Address',
          hintText: 'Your Email Address',
        );
      }

      inputPassword() {
        return const CustomTextFormField(
          title: 'Password',
          hintText: 'Your Password',
          obSecureText: true,
        );
      }

      inputHobby() {
        return const CustomTextFormField(
          title: 'Hobby',
          hintText: 'Your Hobby',
        );
      }

      submitButton() {
        return CustomButton(
          margin: const EdgeInsets.only(top: 10),
          title: 'Get Started',
          width: double.infinity,
          onPressed: () => Navigator.pushNamed(context, '/bonus'),
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            inputName(),
            inputEmail(),
            inputPassword(),
            inputHobby(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        margin: const EdgeInsets.only(top: 50, bottom: 73),
        child: Center(
          child: Text(
            'Terms and Conditions',
            style: greyTextStyle.copyWith(
              fontWeight: light,
              fontSize: 16,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          header(),
          content(),
          tacButton(),
        ],
      ),
    );
  }
}
