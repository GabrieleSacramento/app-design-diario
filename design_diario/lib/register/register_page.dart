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
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16, left: 16, right: 70, bottom: 32),
            child: Text(
              'Preencha as informações para efetuar o cadastro',
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
                    label: 'Email',
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Este campo precisa ser preenchido';
                      }
                      if (!validator.isEmail(text)) {
                        return 'Email incorreto';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomForm(
                    controller: passwordController,
                    label: 'senha',
                    obscureTextPassword: obscureTextPassword,
                    onChanged: (text) => passwordCache = text,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Este campo precisa ser preenchido';
                      }
                      if (text.length < 6) {
                        return 'A senha deve conter de 6 a 8 caracters';
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
                    buttonName: 'Cadastrar',
                    formKey: formKey,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        return Navigator.pushNamed(context, "/page");
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
