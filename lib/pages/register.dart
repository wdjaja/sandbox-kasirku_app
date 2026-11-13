import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kasirku_app/colors.dart';
import 'package:kasirku_app/components/components.dart';
import 'package:kasirku_app/pages/main.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isAccept = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(title: Text('Daftar')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 16,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4,
                children: [
                  HeadingText(text: 'Daftar Akun', color: AppColor.primary),
                  RegularText(text: 'Hi, silakan daftar akun terlebih dahulu'),
                ],
              ),
              SizedBox(height: 24),
              SizedBox(
                height: 165,
                child: Image.asset(
                  'assets/images/reg1.png',
                  height: 145,
                  width: 145,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 24),
              RegularFormInput(
                controller: nameController,
                hintText: 'Nama',
                validator: (value) {
                  if (value != null) {
                    if (value.isEmpty) {
                      return 'Nama tidak boleh kosong!';
                    } else if (value.length < 3) {
                      return 'Nama minimal 3 karakter';
                    }
                  }

                  return null;
                },
              ),
              RegularFormInput(
                controller: emailController,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value != null) {
                    if (value.isEmpty) {
                      return 'Email tidak boleh kosong!';
                    } else if (!value.contains('@')) {
                      //!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)
                      return 'Format email tidak valid!';
                    }
                  }

                  return null;
                },
              ),
              PasswordFormInput(
                controller: passwordController,
                hintText: 'Password',
                validator: (value) {
                  if (value != null) {
                    if (value.isEmpty) {
                      return 'Password tidak boleh kosong!';
                    } else if (value.length < 6) {
                      return 'Password minimal 6 karakter!';
                    }
                  }

                  return null;
                },
              ),
              SizedBox(height: 0.1),
              Row(
                spacing: 12,
                children: [
                  Checkbox(
                    value: isAccept,

                    onChanged: (value) {
                      setState(() {
                        isAccept = !isAccept;
                      });
                    },
                  ),
                  Expanded(
                    child: RegularText(
                      text: 'Dengan menekan daftar anda setuju dengan Srayat dan Kebijakan kami',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0.1),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() == true) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => (MainPage())),
                      (_) => false,
                    );
                  }
                },
                child: Text('Daftar'),
              ),
              SizedBox(height: 0.1),

              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Sudah punya akun? ',
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(
                      text: 'Masuk',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        },
                      style: TextStyle(
                        color: AppColor.primarymain,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
