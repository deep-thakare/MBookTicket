// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:movie_app/bottom_navbar.dart';
// import 'package:movie_app/model/now_playing_model.dart';
// import 'package:ticket_widget/ticket_widget.dart';

// class TicketCard extends StatelessWidget {
//   final NowPlayingModel movie;
//   final String seatInfo;
//   final String time;
//   final String price;
//   final DateTime date;

//   const TicketCard({
//     super.key,
//     required this.movie,
//     required this.seatInfo,
//     required this.time,
//     required this.price,
//     required this.date,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: const Color(0xff000000),
//         centerTitle: true,
//         leading: GestureDetector(
//           onTap: () {
//             Navigator.pushAndRemoveUntil(
//               context,
//               MaterialPageRoute(builder: (context) => const BottomNavbar()),
//               (Route<dynamic> route) => false,
//             );
//           },
//           child: const Icon(
//             Icons.arrow_back_ios_new_rounded,
//             color: Colors.white,
//           ),
//         ),
//         title: Text(
//           "My Ticket",
//           style: GoogleFonts.poppins(
//               fontSize: 24,
//               fontWeight: FontWeight.w700,
//               color: const Color(0xffF2F2F2),
//               height: 36),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 16),
//         child: ClipPath(
//           clipper: TicketClipper(),
//           child: Container(
//             height: MediaQuery.of(context).size.height * 0.8,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Column(
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 25, left: 25, right: 8),
//                       child: SizedBox(
//                         height: MediaQuery.of(context).size.height*0.2,
//                         width: MediaQuery.of(context).size.width*0.3,
//                         child: Container(
                          
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(16),
//                             child: Image.asset(
//                               fit: BoxFit.fill,
//                               movie.img,  // Movie Image
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 30),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             movie.title,  // Movie Title
//                             style: GoogleFonts.poppins(
//                                 fontSize: 22,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black),
//                           ),
//                           // const SizedBox(height: 10),
//                           Text(
//                             movie.language,  // Movie Title
//                             style: GoogleFonts.poppins(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.black),
//                           ),
//                           const SizedBox(height: 10),
//                           Row(
//                             children: [
//                               const Icon(Icons.alarm_outlined),
//                               const SizedBox(width: 10),
//                               Text(
//                                 movie.duration,  // Movie Duration
//                                 style: GoogleFonts.poppins(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w500,
//                                     color: Colors.black),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 5,),
//                           // Row(
//                           //   children: [
//                           //     const Icon(Icons.video_camera_back_outlined),
//                           //     const SizedBox(width: 10),
//                           //     Text(
//                           //       movie.genre,  // Movie Genre
//                           //       style: GoogleFonts.poppins(
//                           //           fontSize: 14,
//                           //           fontWeight: FontWeight.w500,
//                           //           color: Colors.black),
//                           //     ),
//                           //   ],
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10),
//                 Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Row(
//                     children: [
//                       const Icon(
//                         Icons.calendar_month_outlined,
//                         size: 48,
//                       ),
//                       const SizedBox(width: 10),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             time,  // Showtime (e.g., "14:15")
//                             style: GoogleFonts.poppins(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.black),
//                           ),
//                           Text(
//                             "${date.day}-${date.month}-${date.year}",
//                             style: GoogleFonts.poppins(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.black),
//                           ),
//                         ],
//                       ),
//                       const Spacer(),
//                       const Icon(
//                         Icons.chair_outlined,
//                         size: 48,
//                       ),
//                       const SizedBox(width: 10),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Seat No",  // Section Info
//                             style: GoogleFonts.poppins(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.black),
//                           ),
//                           Text(
//                             seatInfo,  // Seat Information (e.g., "Seat H7, H8")
//                             style: GoogleFonts.poppins(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.black),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 26),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: List.generate(40, (index) {
//                       return Container(
//                         width: 5,
//                         height: 1,
//                         color: Colors.black,
//                         margin: const EdgeInsets.symmetric(horizontal: 1),
//                       );
//                     }),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   child: Row(
//                     children: [
//                       const Icon(Icons.currency_rupee_sharp, size: 30),
//                       const SizedBox(width: 10),
//                       Text(
//                         price,  // Price (e.g., "410")
//                         style: GoogleFonts.poppins(
//                             fontSize: 20,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.black),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   child: Row(
//                     children: [
//                       const Icon(Icons.note_add_outlined, size: 30),
//                       const SizedBox(width: 10),
//                       Expanded(
//                         child: Column(
//                           children: [
//                             Text(
//                               'Show your ticket at the counter to get access to the theater',
//                               style: GoogleFonts.poppins(
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.w400,
//                                   color: Colors.black),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/view/bottom_navbar.dart';
import 'package:movie_app/model/now_playing_model.dart';

class TicketCard extends StatelessWidget {
  final NowPlayingModel movie;
  final String seatInfo;
  final String time;
  final String price;
  final DateTime date;

  const TicketCard({
    super.key,
    required this.movie,
    required this.seatInfo,
    required this.time,
    required this.price,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark sleek background
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.7), // Slight transparency
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const BottomNavbar()),
              (Route<dynamic> route) => false,
            );
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        title: Text(
          "My Ticket",
          style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              height: MediaQuery.of(context).size.height*0.7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white.withOpacity(0.1), // Transparent background with frosted effect
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                      gradient: LinearGradient(
                        colors: [Color(0xffFCC434),Color(0xffF1A10A)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    padding: const EdgeInsets.all(18),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            movie.img,
                            height: 140,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movie.title,
                                style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                movie.genre,
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                movie.language,
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  const Icon(Icons.alarm, color: Colors.black87, size: 20),
                                  const SizedBox(width: 5),
                                  Text(
                                    movie.duration,
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2), // Frosted glass effect
                        borderRadius: BorderRadius.circular(18),
                        backgroundBlendMode: BlendMode.darken,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _buildTicketDetailRow(
                            icon: Icons.calendar_today,
                            label: "Date ",
                            value: "${date.day}-${date.month}-${date.year}",
                          ),
                          const SizedBox(height: 16),
                          _buildTicketDetailRow(
                            icon: Icons.access_time,
                            label: "Showtime ",
                            value: time,
                          ),
                          const SizedBox(height: 16),
                          _buildTicketDetailRow(
                            icon: Icons.chair,
                            label: "Seat No ",
                            value: seatInfo,
                          ),
                          const SizedBox(height: 16),
                          _buildTicketDetailRow(
                            icon: Icons.currency_rupee,
                            label: "Price ",
                            value: price,
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: List.generate(40, (index) {
                        return Expanded(
                          child: Container(
                            height: 2,
                            color: index.isEven ? Colors.grey.withOpacity(0.6) : Colors.transparent,
                          ),
                        );
                      }),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Row(
                      children: [
                        const Icon(Icons.info_outline, color: Colors.white70, size: 30),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Show this ticket at the counter to gain entry to the theater.',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTicketDetailRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 32), // White icon color for elegance
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              "$label:",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
          ),
          Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}


