import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:string_validator/string_validator.dart' as validator;
import '../../shared/design_diario_constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_form.dart';
import 'cubit/cubit/user_auth_cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
    required this.userAuthCubit,
  });

  final UserAuthCubit userAuthCubit;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final userAuthCubit = GetIt.I.get<UserAuthCubit>();
  var passwordCache = '';

  bool obscureTextPassword = true;

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void _submitLogin() {
    if (formKey.currentState?.validate() ?? false) {
      context
          .read<UserAuthCubit>()
          .getUserCredential(emailController.text, passwordController.text);
    }
  }

  void _onAuthenticationStateChange(BuildContext context, UserAuthState state) {
    if (state is UserAuthSuccess) {
      Navigator.pushReplacementNamed(context, "/homePage");
    }
  }

  // @override
  // void dispose() {
  //   emailController.dispose();
  //   passwordController.dispose();

  //   super.dispose();
  // }

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
        child: BlocProvider(
          create: (context) => userAuthCubit,
          child: BlocConsumer<UserAuthCubit, UserAuthState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is UserAuthSuccess) {
                Navigator.pushReplacementNamed(context, "/homePage");
              }
              return Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 16, left: 16, right: 70, bottom: 32),
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
                          controller: emailController,
                          label: DesignDiarioConstants.formLabelEmail,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return DesignDiarioConstants
                                  .fieldNeedsToBeCompleted;
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
                              return DesignDiarioConstants
                                  .fieldNeedsToBeCompleted;
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
                        BlocConsumer<UserAuthCubit, UserAuthState>(
                          listener: _onAuthenticationStateChange,
                          builder: (context, state) {
                            return CustomButton(
                                buttonName: DesignDiarioConstants.login,
                                formKey: formKey,
                                onPressed: _submitLogin);
                          },
                        )
                      ],
                    ),
                  )),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
