import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vokasi_app/screens/profile_screen.dart';

// ignore: must_be_immutable
class RegisterScreen2 extends StatefulWidget {
  const RegisterScreen2({Key? key}) : super(key: key);

  @override
  State<RegisterScreen2> createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {
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
          },
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff484848),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
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
              // Detail Akun
              Row(
                children: [
                  Text(
                    "Detail Akun",
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // Nama
              Row(
                children: [
                  Text(
                    'Nama',
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              // TextField Nama
              TextField(
                  decoration: InputDecoration(
                hintText: 'Masukkan Nama Lengkap Anda ',
                isDense: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                      color: Color(0xffee8301),
                    )),
              )),
              const SizedBox(height: 15.0),
              // Nama Panggilan
              Row(
                children: [
                  Text(
                    'Nama Panggilan',
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              // TextField Nama Panggilan
              TextField(
                  decoration: InputDecoration(
                hintText: 'Masukkan Nama Panggilan ',
                isDense: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                      color: Color(0xffee8301),
                    )),
              )),
              const SizedBox(height: 15.0),
              // NPM
              Row(
                children: [
                  Text(
                    'NPM',
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              // TextField NPM
              TextField(
                  decoration: InputDecoration(
                hintText: 'Masukkan NPM Anda ',
                isDense: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                      color: Color(0xffee8301),
                    )),
              )),
              const SizedBox(height: 15.0),
              // Pilih Program Studi
              Row(
                children: [
                  Text(
                    'Pilih Program Studi',
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              // TextField Program Studi
              TextField(
                  decoration: InputDecoration(
                hintText: 'Program Studi ',
                isDense: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                      color: Color(0xffee8301),
                    )),
              )),
              const SizedBox(height: 15.0),
              // Alamat Rumah/Kost
              Row(
                children: [
                  Text(
                    'Alamat Rumah/Kost',
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              // TextField Alamat Rumah/Kost
              TextField(
                  decoration: InputDecoration(
                hintText: 'Masukkan Alamat Rumah/Kost Anda ',
                isDense: true,
                contentPadding: const EdgeInsets.all(50),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                      color: Color(0xffee8301),
                    )),
              )),
              const SizedBox(height: 30.0),
              // Daftar Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                },
                child: const Text('Daftar'),
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
            ]))),
      ),
    );
  }
}
