import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:task_cavz/controller/create_accountpage_controller.dart';
import 'package:task_cavz/utils/themes/widget_theme.dart';
import 'package:task_cavz/utils/widgets/custom_button1.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({super.key});

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<CreateAccountController>(context);
    controller.initObscureTextList(2);
    return Scaffold(
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Create Account",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              CustomTextField(
                obscure: controller.isObscure(0),
                hint: 'Enter your Email',
                color: Colors.grey.shade200,
                isPassword: false,
                toggleObscure: () => controller.toggleObscure(0),
                controller: email,
              ),
              CustomTextField(
                obscure: controller.isObscure(0),
                hint: 'Password',
                color: Colors.grey.shade200,
                isPassword: true,
                toggleObscure: () => controller.toggleObscure(0),
                controller: password,
              ),
              CustomTextField(
                obscure: controller.isObscure(1),
                hint: 'Confirm Password',
                color: Colors.grey.shade200,
                isPassword: true,
                toggleObscure: () => controller.toggleObscure(1),
                controller: confirmpass,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Consumer<CreateAccountController>(
                  builder: (context, value, child) => CheckboxMenuButton(
                      value: value.termNcondition,
                      onChanged: controller.chechTermsAndCondition,
                      child:
                          const Text("Terms & Conditions , Privacy Policy *")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Consumer<CreateAccountController>(
                  builder: (context, value, child) => CheckboxMenuButton(
                      value: value.marketingandpromo,
                      onChanged: controller.chechMArketingAction,
                      child: const Text("Marketing promotions & Newsletter")),
                ),
              ),
              Consumer<CreateAccountController>(
                builder: (context, value, child) => CustomButton(
                  textData: 'Create',
                  decoration: MyAppWidgetThemes.buttonContainerTheme,
                  onTap: () async {
                    var PassWordvalue = password.text;
                    var emailvalue = email.text;
                    print(emailvalue+"======");

                    var ConfirmValue = confirmpass.text;print(ConfirmValue+"======");
                    if (PassWordvalue == ConfirmValue) {
                      controller.registration(context, email: email.text, password:ConfirmValue);
                    } else {
                      Fluttertoast.showToast(msg: "Password Doesn't match");
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.obscure,
    required this.hint,
    required this.color,
    required this.isPassword,
    required this.toggleObscure,
    required this.controller,
  }) : super(key: key);

  final bool obscure;
  final bool isPassword;
  final String hint;
  final Color color;
  final TextEditingController controller;
  final VoidCallback toggleObscure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .88,
        child: isPassword
            ? TextFormField(
                controller: controller,
                obscureText: isPassword,
                decoration: InputDecoration(
                  // suffixIcon: IconButton(
                  //   onPressed: toggleObscure,
                  //   icon: obscure
                  //       ? const Icon(CupertinoIcons.eye)
                  //       : const Icon(CupertinoIcons.eye_slash),
                  // ),
                  hintText: hint,
                  filled: true,
                  fillColor: color,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            : TextFormField(
          controller: controller,
                decoration: InputDecoration(
                  hintText: hint,
                  filled: true,
                  fillColor: color,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
      ),
    );
  }
}
