import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:saty_safe_admin/elements/header.dart';
import 'package:saty_safe_admin/elements/sizes.dart';

import '../../../../elements/app_logo.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_text.dart';
import '../../../../elements/custom_textfield.dart';
class AddSubAdminBody extends StatelessWidget {
  const AddSubAdminBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(),
        Expanded(child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Align(alignment: Alignment.topLeft,
                  child: Text('Add Sub Admin',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.red),),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: Colors.green.withOpacity(0.3),
                    ),
                    height: 430,
                    width: 700,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AppLogo(
                              height: 90,
                              width: 90,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: CustomText(
                                text: 'We Ensure Your Safety',
                                fontSize: 15,
                                fontfamily: 'Shantel',
                                fontWeight: FontWeight.w300,
                                color: Colors.red,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: CustomText(text: 'User Name',color: Colors.red,),
                            ),
                            CustomTextField(
                              inputTextColor: Colors.black87.withOpacity(0.5),
                              //controller: _emailController,
                              hintText: 'Enter Your User Name',
                              prefixIcon: Icons.email_outlined,
                              textInputType: TextInputType.emailAddress,

                            ),
                            k10,
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: CustomText(text: 'Email',color: Colors.red,),
                            ),
                            CustomTextField(
                              inputTextColor: Colors.black87.withOpacity(0.5),
                              //controller: _emailController,
                              hintText: 'Enter Your Email',
                              prefixIcon: Icons.email_outlined,
                              textInputType: TextInputType.emailAddress,
                            ),
                            k10,
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: CustomText(
                                text: 'Password',
                                color: Colors.red,
                              ),
                            ),
                            CustomTextField(
                              inputTextColor: Colors.black87.withOpacity(0.5),
                              //controller: _passwordController,
                              hintText: 'Password',
                              isObsecure: true,
                              isSuffix: true,
                              prefixIcon: Icons.lock_outline,
                            ),
                            k20,
                            CustomButton(
                              buttonText: 'Create',
                              radius: 12,
                              onTapped: () {
                                // NavigationHelper.pushRoute(
                                //     context, AppDrawer.routeName);
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ))

      ],
    );
  }
}
