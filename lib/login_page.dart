import 'package:flutter/material.dart';
import 'package:gezdim_gordum/gezi_listesi.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _password = '', userName = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'image/logomuz1.PNG',
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Hoşgeldin , burası senin anı defterin ! ',
                  style: TextStyle(color: Colors.black87, fontSize: 16),
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'İsim',
                          hintText: 'Adınızı Giriniz'),
                      onSaved: (deger) {
                        userName = deger!;
                      },
                      validator: (deger) {
                        if (deger!.length < 4) {
                          return 'Username en az 3 karakter olmalı';
                        } else
                          return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Şifrenizi Giriniz',
                          hintText: 'Şifre'),
                      onSaved: (deger) {
                        _password = deger!;
                      },
                      validator: (deger) {
                        if (deger!.length < 6) {
                          return 'Şifre ne az 6 karakter olmalı';
                        } else
                          return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Şifreni mi unuttun ?',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 16)),
                            ),
                          ]),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        bool _validate = _formKey.currentState!.validate();
                        if (_validate) {
                          _formKey.currentState!.save();
                          String result = 'Hosgeldin $userName';
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.orange,
                              content: Text(
                                result,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          );
                        }
                        Navigator.pushNamed(context, '/loginPage');
                      },
                      child: Text('GİRİŞ'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue.shade600),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Google Hesabın İle Giriş Yap'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 60,
                        height: 60,
                        child:
                            Image.asset('image/google.PNG', fit: BoxFit.cover),
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}