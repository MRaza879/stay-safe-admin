import 'package:flutter/material.dart';
import 'package:saty_safe_admin/helper/navigation_helper.dart';
import 'package:saty_safe_admin/configurations/color_constants.dart';
import 'package:saty_safe_admin/elements/app_logo.dart';
import 'package:saty_safe_admin/elements/custom_text.dart';
import 'package:saty_safe_admin/elements/custom_textfield.dart';
import 'package:saty_safe_admin/elements/custom_text_button.dart';
import 'package:saty_safe_admin/elements/custom_button.dart';
import 'package:saty_safe_admin/elements/sizes.dart';
import 'package:saty_safe_admin/presentation/app_view/home_screen/home_screen_view.dart';
import 'package:saty_safe_admin/presentation/auth_view/login_screen/login_screen_view.dart';
import 'package:saty_safe_admin/presentation/auth_view/reset_password/reset_password_view.dart';

class LoginScreenViewBody extends StatelessWidget {
  const LoginScreenViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: ColorConstants.kGradientColor)),
        child: Column(
          children: [
            k40,
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                  color: ColorConstants.kBadgeTextColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppLogo(
                        height: 120,
                        width: 120,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: CustomText(
                          text: 'We Ensure Your Safety',
                          fontSize: 20,
                          fontfamily: 'Shantel',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      k10,
                      CustomText(
                        text: 'Login',
                        fontWeight: FontWeight.w500,
                        fontSize: 36,
                        fontfamily: 'Shantel',
                      ),
                      k20,
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: CustomText(text: 'Email'),
                      ),
                      CustomTextField(
                        controller: _emailController,
                        hintText: 'Enter Your Email',
                        prefixIcon: Icons.email_outlined,
                        textInputType: TextInputType.emailAddress,
                      ),
                      k10,
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CustomText(
                          text: 'Password',
                        ),
                      ),
                      CustomTextField(
                        controller: _passwordController,
                        hintText: 'Password',
                        isObsecure: true,
                        isSuffix: true,
                        prefixIcon: Icons.lock_outline,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CustomTextButton(
                            buttonText: 'Forget password?',
                            textColor: ColorConstants.kPrimaryColor,
                            onPressed: () {
                              NavigationHelper.pushRoute(
                                  context, ResetPasswordView.routeName);
                            }),
                      ),
                      k15,
                      CustomButton(
                        buttonText: 'Login',
                        radius: 12,
                        onTapped: () {
                           NavigationHelper.pushRoute(
                               context, HomeScreenView.routeName);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
