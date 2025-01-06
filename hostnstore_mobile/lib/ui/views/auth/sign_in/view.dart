import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hostnstore_mobile/core/utils/validatation_util.dart';
import 'package:hostnstore_mobile/temp_app/screens/auth/views/components/login_form.dart';
import 'package:hostnstore_mobile/ui/theme/style.dart';
import 'package:hostnstore_mobile/ui/widgets/common_widgets/text_fields/text_fileds/leading_textfield.dart';
import 'package:hostnstore_mobile/ui/widgets/common_widgets/text_fields/text_fileds/password_field.dart';

import 'package:stacked/stacked.dart';
import 'view_model.dart';

class SignInView extends StackedView<SignInViewModel> {
  const SignInView({
    super.key,
  });

  @override
  Widget builder(
      BuildContext context, SignInViewModel viewModel, Widget? child) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_dark.png",
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(AppStyle.defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back!",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: AppStyle.defaultPadding / 2),
                  const Text(
                    "Log in with your data that you intered during your registration.",
                  ),
                  const SizedBox(height: AppStyle.defaultPadding),
                  Form(
                    key: viewModel.formKey,
                    child: Column(
                      children: [
                        Leadingtextformfiled(
                          valid: (value) => ValidatationUtil.emailvaild(value!,
                              genValidateMsg: 'Please enter email address',
                              specValidateMsg:
                                  'Please enter a valid email address'),
                          keybordtype: TextInputType.emailAddress,
                          hintText: "Email address",
                          leading: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: AppStyle.defaultPadding * 0.75),
                            child: SvgPicture.asset(
                              "assets/icons/Message.svg",
                              height: 24,
                              width: 24,
                              colorFilter: ColorFilter.mode(
                                  Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color!
                                      .withOpacity(0.3),
                                  BlendMode.srcIn),
                            ),
                          ),
                          controller: viewModel.emailController,
                          onchange: (val) {},
                        ),
                        const SizedBox(height: AppStyle.defaultPadding),
                        PrimaryPasswordformfiled(
                          controller: viewModel.passwordController,
                          valid: (value) => ValidatationUtil.signupPassword(
                              value!,
                              genValidateMsg: 'Please enter password',
                              specValidateMsg:
                                  'Password must be at least 6 characters long and contain at least one uppercase letter, one lowercase letter, one number and one special character'),
                          hintText: "Password",
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: AppStyle.defaultPadding * 0.75),
                            child: SvgPicture.asset(
                              "assets/icons/Lock.svg",
                              height: 24,
                              width: 24,
                              colorFilter: ColorFilter.mode(
                                  Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color!
                                      .withOpacity(0.3),
                                  BlendMode.srcIn),
                            ),
                          ),
                          onchange: (val) {},
                        ),
                      ],
                    ),
                  ),
                  Align(
                    child: TextButton(
                      child: const Text("Forgot password"),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: size.height > 700
                        ? size.height * 0.1
                        : AppStyle.defaultPadding,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Log in"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Sign up"),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  viewModelBuilder(BuildContext context) => SignInViewModel();

  @override
  void onViewModelReady(SignInViewModel viewModel) => viewModel.init();
}
