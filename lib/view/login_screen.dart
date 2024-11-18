import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/view/sign_in_screen.dart';
import 'package:movie_app/view/sign_up_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 55, left: 16),
            child:SvgPicture.asset(
              "assets/Frame.svg",
              
            ),
          ),
          const SizedBox(height: 10,),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/bgapp.png",
                        color: Color(0xffFCC434),
                      )
                    ],
                  ),
                
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "MBooking",
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 5,),
                    Text(
                      "hello!",
                      style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: Color(0xffFCC434),
                      fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  "Enjoy your favorite movies here",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Color.fromARGB(180, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1.6),
                borderRadius: BorderRadius.circular(50)),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SingInScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350, 52),
                  backgroundColor: Color(0xffFCC434),
                  
              ),
              child: Text(
                "Sign in",
                style: GoogleFonts.poppins(
                      color  : Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1.6),
                borderRadius: BorderRadius.circular(50)),
            child: ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SingUpPage()),
                );

              },
              style: ElevatedButton.styleFrom(
                  animationDuration: const Duration(seconds: 3),
                  minimumSize: const Size(350, 52),
                  backgroundColor: Colors.black),
              child: Text(
                "Sign up",
                style: GoogleFonts.poppins(
                   color:  Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

}