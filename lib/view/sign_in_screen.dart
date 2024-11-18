import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/view/bottom_navbar.dart';
import 'package:movie_app/view/forgot_password_screen.dart';


class SingInScreen extends StatefulWidget {
  const SingInScreen({super.key});

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff000000),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80,),
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  "assets/Frame.svg",
                  height: 50,
                ),
              ),
          
              const SizedBox(height: 80,),
              Text(
                "Enter UserName",
                style: GoogleFonts.poppins(
                    color: Color(0xffFCC434),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff1C1C1C),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: TextField(
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                  decoration: InputDecoration(
                    labelText: "Enter User Name",
                    labelStyle:
                        GoogleFonts.poppins(color:  Color.fromARGB(192, 255, 255, 255)),
                  
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                ),
              ),
               const SizedBox(
                height: 10,
              ),
              Text(
                "Enter Password",
                style: GoogleFonts.poppins(
                    color: Color(0xffFCC434),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff1C1C1C),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: TextField(
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                  decoration: InputDecoration(
                    labelText: "Enter Password",
                    labelStyle:
                        GoogleFonts.poppins(color:  Color.fromARGB(192, 255, 255, 255)),
                  
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                ),
              ),
          
          
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPasswordScreen(),));
                },
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Forgot Password ?",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFCC434),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              
          
          
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BottomNavbar()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xffFCC434),
                    ),
                    child: Center(
                        child: Text(
                      "Continue",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                      ),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}