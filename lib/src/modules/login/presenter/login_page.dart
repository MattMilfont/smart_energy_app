import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:smart_energy_app/src/core/presenter/components/button_component.dart';
import 'package:smart_energy_app/src/modules/login/interactor/atom/login_atom.dart';
import 'package:smart_energy_app/src/modules/login/model/login_model.dart';
import 'package:smart_energy_app/src/utils/app_assets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool obscureText = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final state = context.select(() => loginState.value);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.logo,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          controller: emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'E-mail não pode ser vazio';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            label: Text('E-mail'),
                            border: OutlineInputBorder(),
                            hintText: 'Seu e-mail',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Senha não pode ser vazio';
                            }
                            return null;
                          },
                          obscureText: obscureText,
                          controller: passwordController,
                          decoration: InputDecoration(
                            label: const Text('Senha'),
                            border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: () {
                                obscureText = !obscureText;
                                setState(() {});
                              },
                              icon: obscureText
                                  ? const Icon(
                                      Icons.remove_red_eye,
                                    )
                                  : const Icon(
                                      Icons.remove_red_eye_outlined,
                                    ),
                            ),
                          ),
                        ),
                      ),
                      state.when(
                        init: () => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: ButtonComponent(
                                enabled: true,
                                label: 'Login',
                                backgroundColor: Colors.orange,
                                textColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                                icon: Icons.arrow_circle_right_outlined,
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    loginModel.setValue(
                                      LoginModel(
                                        email: emailController.text,
                                        password: passwordController.text,
                                      ),
                                    );
                                    onLogin.call();
                                  }
                                },
                              ),
                            )
                          ],
                        ),
                        loading: (s) => const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [CircularProgressIndicator()],
                          ),
                        ),
                        error: (s) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            children: [
                              Text(
                                s.erroMsg,
                                style: const TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                                softWrap: true,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: ButtonComponent(
                                  enabled: true,
                                  label: 'Login',
                                  backgroundColor: Colors.orange,
                                  textColor:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  icon: Icons.arrow_circle_right_outlined,
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      loginModel.setValue(
                                        LoginModel(
                                          email: emailController.text,
                                          password: passwordController.text,
                                        ),
                                      );
                                      onLogin.call();
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
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
}
