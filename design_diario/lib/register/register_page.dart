import 'package:design_diario/shared/design_di%C3%A1rio_constants.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart' as validator;
import '../widgets/custom_button.dart';
import '../widgets/custom_form.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    super.key,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  var passwordCache = '';
  var confirmPasswordCache = '';
  bool obscureTextPassword = true;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(top: 16, left: 16, right: 70, bottom: 32),
              child: Text(
                DesignDiarioConstants.fillInTheInformation,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    CustomForm(
                      controller: nameController,
                      label: DesignDiarioConstants.formLabelName,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return DesignDiarioConstants.fieldNeedsToBeCompleted;
                        }
                        if (text.length < 5) {
                          return DesignDiarioConstants.pleaseInformFullName;
                        }
                        return null;
                      },
                    ),
                    CustomForm(
                      controller: emailController,
                      label: DesignDiarioConstants.formLabelEmail,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return DesignDiarioConstants.fieldNeedsToBeCompleted;
                        }
                        if (!validator.isEmail(text)) {
                          return DesignDiarioConstants.incorrectEmail;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomForm(
                      controller: passwordController,
                      label: DesignDiarioConstants.formLabelPassword,
                      obscureTextPassword: obscureTextPassword,
                      onChanged: (text) => passwordCache = text,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return DesignDiarioConstants.fieldNeedsToBeCompleted;
                        }
                        if (text.length < 6) {
                          return DesignDiarioConstants.passwordMostContain;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    CustomButton(
                      buttonName: DesignDiarioConstants.register,
                      formKey: formKey,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          return Navigator.pushReplacementNamed(
                              context, "/homePage");
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
