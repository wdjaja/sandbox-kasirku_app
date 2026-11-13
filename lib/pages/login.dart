import 'package:flutter/material.dart';
import 'package:kasirku_app/colors.dart';
import 'package:kasirku_app/pages/main.dart';
import 'package:kasirku_app/pages/register.dart';
import 'package:kasirku_app/components/components.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 12,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    HeadingText(
                      text: 'Selamat Datang',
                      color: AppColor.primary,
                    ),
                    RegularText(
                      text: 'Hai, Silahkan Masuk Untuk Melanjutkan',
                      color: AppColor.text,
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Image.asset(
                  'assets/images/login1.png',
                  height: 145,
                  width: 145,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 1),
                RegularFormInput(
                  controller: emailController,
                  validator: (value) {
                    if (value != null) {
                      if (value.isEmpty) {
                        return 'Email Tidak Boleh Kosong!';
                      } else if ((!value.contains('@'))
                      //!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)
                      ) {
                        return 'Format Email Tidak Valid!';
                      }
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {});
                  },
                ),

                PasswordFormInput(
                  controller: passwordController,
                  // ignore: body_might_complete_normally_nullable
                  validator: (value) {
                    if (value != null) {
                      if (value.isEmpty) {
                        return 'Password Tidak Boleh Kosong!';
                      } else if (value.length < 6) {
                        return 'Password Minimal 6 Karakter!';
                      }
                    }
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(onTap: () {}, child: Text('Lupa Password')),
                  ],
                ),
                ElevatedButton(
                  onPressed: emailController.text.isEmpty
                      ? null
                      : () {
                          if (_formKey.currentState?.validate() == true) {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (_) => MainPage()),
                              (_) => false,
                            );
                          }
                        },

                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontFamily: 'Poppins'),
                  ),
                  child: Text('Masuk'),
                ),
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum punya akun?',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => RegisterPage()),
                        );
                      },
                      child: const Text(
                        'Daftar',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff17755C),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
