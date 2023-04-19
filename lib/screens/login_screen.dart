import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vokasi_app/screens/forgot_password.dart';
import 'package:vokasi_app/screens/profile_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Icon Back Arrow
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(
                context,
              );
            }),
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff484848),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Center(
                child: Column(children: [
              // Logo Vokasi
              Image.asset(
                'assets/logo_vokasi-orange.png',
                height: 80,
                width: 80,
              ),
              const SizedBox(height: 10.0),
              // Masuk
              Row(
                children: [
                  Text(
                    "Masuk",
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // Alamat Email
              Row(
                children: [
                  Text(
                    'Alamat Email',
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              // TextField Email
              TextField(
                  decoration: InputDecoration(
                hintText: 'Masukkan Alamat Email UNPAK ',
                isDense: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                      color: Color(0xffee8301),
                    )),
              )),
              const SizedBox(height: 15.0),
              // Kata Sandi
              Row(
                children: [
                  Text(
                    'Kata Sandi',
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              // TextField Kata Sandi
              TextField(
                  decoration: InputDecoration(
                hintText: 'Masukkan Kata Sandi Anda ',
                isDense: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                      color: Color(0xffee8301),
                    )),
              )),
              const SizedBox(height: 50.0),
              // Lanjut Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                },
                child: const Text('Masuk'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffee8301),
                  minimumSize: const Size(400.0, 45.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  textStyle: GoogleFonts.poppins(fontSize: 14.0),
                ),
              ),
              const SizedBox(height: 30.0),
              // Lupa Kata Sandi?
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPassword()));
                },
                child: Text(
                  'Lupa Kata Sandi?',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xffee8301),
                  ),
                ),
              )
            ]))),
      ),
    );
  }
}
