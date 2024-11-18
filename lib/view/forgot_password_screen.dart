import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/view/bottom_navbar.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<ForgotPasswordScreen> {

  
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
              Text(
                "Forgot Password",
                style: GoogleFonts.poppins(
                    color: Color(0xffFCC434),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15,),
              Text(
                "Please, enter your email address. You will receive a link to create a new password via email",
                style: GoogleFonts.poppins(
                    color: Colors.white60,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
              ),
              
              
              const SizedBox(
                height: 40,
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
                    labelText: "Enter email",
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
                      "Send",
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