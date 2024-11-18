import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/view/home_page.dart';
import 'package:movie_app/view/movie_info.dart';
import 'package:movie_app/view/profile_page.dart';
import 'package:movie_app/view/ticket_page.dart';



class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BottomNavbar> {
  int _selectedIndex = 0;


  final List<Widget> pages = [
    const HomePage(),  
    const TicketPage(),
     MovieInfo(), 
    const ProfilePage(),  
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: pages[_selectedIndex], 
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 1.0, 
            color: Color(0xff262626),
          ),
          const SizedBox(height: 5,),
          BottomNavigationBar(
            backgroundColor: Colors.black,
            selectedItemColor: Color(0xffFCC434),
            unselectedItemColor: Colors.white,
            selectedLabelStyle: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xffCCCCCC)
            ),
            unselectedLabelStyle: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xffCCCCCC)
            ),
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped, 
            items: [
              BottomNavigationBarItem(
                
                icon: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/home.svg",
                      colorFilter: _selectedIndex == 0
                      ? const ColorFilter.mode(Colors.yellow, BlendMode.srcIn)
                      : const ColorFilter.mode(Colors.white, BlendMode.srcIn),                   
                    ),
                    const SizedBox(height: 5,),
                  ],
                ),
                label: 'Home',
                
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/ticket.svg",
                      colorFilter: _selectedIndex == 1
                      ? const ColorFilter.mode(Colors.yellow, BlendMode.srcIn)
                      : const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                    const SizedBox(height: 5,),
                  ],
                ),
                label: 'Ticket',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/video.svg",
                      colorFilter: _selectedIndex == 2
                      ? const ColorFilter.mode(Colors.yellow, BlendMode.srcIn)
                      : const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                    const SizedBox(height: 5,),
                  ],
                ),
                label: 'Movie',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/user.svg",
                      colorFilter: _selectedIndex == 3
                      ? const ColorFilter.mode(Colors.yellow, BlendMode.srcIn)
                      : const ColorFilter.mode(Colors.white, BlendMode.srcIn),      
                    ),
                    const SizedBox(height: 5,),
                  ],
                ),
                label: 'Profile',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
