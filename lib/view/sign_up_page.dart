import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/view/bottom_navbar.dart';



class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => SingUpPageState();
}

class SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                ),
              ),
          
              const SizedBox(height: 40,),
              Text(
                "Enter UserName",
                style: GoogleFonts.poppins(
                    color: const Color(0xffFCC434),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff1C1C1C),
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
                        GoogleFonts.poppins(color:  const Color.fromARGB(192, 255, 255, 255)),
                  
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                ),
              ),
          
              const SizedBox(height: 10,),
              Text(
                "Enter Gmail",
                style: GoogleFonts.poppins(
                    color: const Color(0xffFCC434),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff1C1C1C),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: TextField(
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                  decoration: InputDecoration(
                    labelText: "Enter gmail",
                    labelStyle:
                        GoogleFonts.poppins(color:  const Color.fromARGB(192, 255, 255, 255)),
                  
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                ),
              ),
          
              const SizedBox(height: 10,),
          
              Text(
                "Enter Password",
                style: GoogleFonts.poppins(
                    color: const Color(0xffFCC434),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff1C1C1C),
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
                        GoogleFonts.poppins(color:  const Color.fromARGB(192, 255, 255, 255)),
                  
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
                    setState(() {});
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xffFCC434),
                    ),
                    child: Center(
                        child: Text(
                      "Continue",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
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