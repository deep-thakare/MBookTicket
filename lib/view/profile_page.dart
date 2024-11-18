import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/view/coupon_code.dart';
import 'package:movie_app/view/forgot_password_screen.dart';
import 'package:movie_app/view/login_screen.dart';
import 'package:movie_app/view/payment_history_screen.dart';
import 'package:movie_app/view/ticket_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<Map<String, dynamic>> options = [
    {
      'title': 'My Ticket',
      'icon': 'assets/ticket.svg',
      // 'screen': const TicketPage(),
      'navigate': (BuildContext context) {
        // Navigator.push(
        //   context,
        //   // MaterialPageRoute(builder: (context) => const TicketPage()),
        // );
      },
    },
    {
      'title': 'Payment History',
      'icon': Icons.shopping_cart_outlined,
      'screen': PaymentHistoryPage(),
      'navigate': (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PaymentHistoryPage()),
        );
      },
    },
    {
      'title': 'Coupon Code',
      'icon': Icons.local_offer,
      'screen': const CouponCode(),
      'navigate': (BuildContext context) {
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CouponCode()),
        );
      },
    },
    {
      'title': 'Change Password',
      'icon': Icons.lock_outline_rounded,
      'screen': const ForgotPasswordScreen(),
      'navigate': (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
        );
      },
    },
    {
      'title': 'Log Out',
      'icon': Icons.logout_rounded,
      'screen': null,
      'navigate': (BuildContext context) {
        Navigator.pushAndRemoveUntil(
              context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                    (Route<dynamic> route) => false,
            );
      },
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 70),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.amber,
              ),
              child: Image.asset("assets/profile.png"),
            ),
            const SizedBox(height: 5),
            Text(
              "UserName",
              style: GoogleFonts.poppins(
                color: const Color(0xffF2F2F2),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.mail_outline,
                  color: Color(0xffF2F2F2),
                  size: 23,
                ),
                const SizedBox(width: 5),
                Text(
                  "username@example.com",
                  style: GoogleFonts.poppins(
                    color: const Color(0xffF2F2F2),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: options.length,
                itemBuilder: (context, index) {
                  final option = options[index];
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (option['navigate'] != null) {
                            option['navigate'](context); 
                          }
                        },
                        child: Row(
                          children: [
                            option['icon'] is String
                                ? SvgPicture.asset(option['icon'])
                                : Icon(option['icon'], color: const Color(0xffF2F2F2)),
                            const SizedBox(width: 10),
                            Text(
                              option['title'],
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: const Color(0xffF2F2F2),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Color(0xffF2F2F2),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Divider(thickness: 0.3, color: Colors.grey),
                      const SizedBox(height: 16),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class ProfilePage extends StatefulWidget {
//   ProfilePage({super.key});

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   final List<Map<String, dynamic>> options = [
//     {
//       'title': 'My Ticket',
//       'icon': Icons.confirmation_number,
//       'screen': const TicketPage(),
//     },
//     {
//       'title': 'Payment History',
//       'icon': Icons.history,
//       'screen': const CouponCode(),
//     },
//     {
//       'title': 'Coupon Code',
//       'icon': Icons.local_offer,
//       'screen': const CouponCode(),
//     },
//     {
//       'title': 'Change Password',
//       'icon': Icons.lock,
//       'screen': const ForgotPasswordScreen(),
//     },
//     {
//       'title': 'Log Out',
//       'icon': Icons.logout,
//       'screen': () {}, 
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Column(
//         children: [
//           const SizedBox(height: 70),
//           CircleAvatar(
//             radius: 50,
//             backgroundImage: AssetImage("assets/profile.png"),
//             backgroundColor: Colors.amber,
//           ),
//           const SizedBox(height: 10),
//           Text(
//             "UserName",
//             style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             "username@example.com",
//             style: TextStyle(color: Colors.grey[400], fontSize: 14),
//           ),
//           const SizedBox(height: 30),


//           Expanded(
//             child: ListView.builder(
//               itemCount: options.length,
//               itemBuilder: (context, index) {
//                 final option = options[index];
//                 return GestureDetector(
//                   onTap: () {
//                     if (option['screen'] != null) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => option['screen']),
//                       );
//                     } 
          
//                   },
//                   child: Container(
//                     margin: const EdgeInsets.only(bottom: 12),
//                     padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//                     decoration: BoxDecoration(
//                       color: const Color(0xff2B2B2B),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(option['icon'], color: Colors.white),
//                         const SizedBox(width: 12),
//                         Text(
//                           option['title'],
//                           style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
//                         ),
//                         const Spacer(),
//                         const Icon(Icons.keyboard_arrow_right_outlined, color: Colors.grey),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }











