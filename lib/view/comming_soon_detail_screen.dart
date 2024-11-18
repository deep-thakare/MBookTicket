import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/model/comming_soon_model.dart';


// class CommingSoonDetailScreen extends StatefulWidget {
//   const CommingSoonDetailScreen({super.key});

//   @override
//   State<CommingSoonDetailScreen> createState() => _MovieDetailScreenState();
// }

// class _MovieDetailScreenState extends State<CommingSoonDetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Column(
//         children: [
//           Stack(
//             clipBehavior: Clip.none,
//             children: [
//               SizedBox(
//                 width: MediaQuery.of(context).size.width,
//                 height: 240,
//                 child: Image.asset(
//                   "assets/bgimg.jpg",
//                 ),
//               ),
//               Positioned(
//                 top: 50,
//                 left: 20,
//                 child: GestureDetector(
//                   onTap: (){
//                     Navigator.of(context).pop();
//                   },
//                   child: Icon(
//                     Icons.arrow_back_ios_new_outlined,
//                     size: 30,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: 160,
//                 left: 10,
//                 right: 10,
//                 child: Container(
                  
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: const Color.fromRGBO(28, 28, 28, 1),
//                     // boxShadow: const [
//                     //     BoxShadow(
//                     //         offset: Offset(0, 5),
//                     //         color: Color.fromARGB(255, 58, 57, 57),
//                     //         blurRadius: 20,
//                     //         spreadRadius: 1),
//                     //   ],
//                   ),
                  
//                   width: MediaQuery.of(context).size.width,
//                   child: Padding(
//                     padding: const EdgeInsets.all(20),
//                     child: Column(
//                       children: [
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Avengers: Infinity War",
//                               style: GoogleFonts.poppins(
//                                   fontSize: 24,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.white
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Align(
//                           alignment: Alignment.topLeft,
//                           child: Text(
//                             "English",
//                             style: GoogleFonts.poppins(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.grey),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 30,
//                         ),
//                         Row(
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Release Date",
//                                   style: GoogleFonts.poppins(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w600,
//                                       color: Colors.white),
//                                 ),
//                                 Text(
//                                   "Nov 20, 2024",
//                                   style: GoogleFonts.poppins(
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.white),
//                                 ),
//                               ],
//                             ),

//                           const SizedBox(width: 50,),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Available in",
//                                   style: GoogleFonts.poppins(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w600,
//                                       color: Colors.white),
//                                 ),
//                                 Text(
//                                   "Hindi",
//                                   style: GoogleFonts.poppins(
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.white),
//                                 ),
//                               ],
//                             ),
                            
//                           ],
//                         ),  
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 140,
//           ),
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         "Movie genre :",
//                         style: GoogleFonts.poppins(
//                             fontSize: 17,
//                             color: Color.fromRGBO(205, 205, 205, 1)),
//                       ),
//                       SizedBox(
//                         width: 30,
//                       ),
//                       Text(
//                         "Action,adventure,sci-fi",
//                         style: GoogleFonts.poppins(
//                             fontSize: 17,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         "Censorship :",
//                         style: GoogleFonts.poppins(
//                             fontSize: 17,
//                             color: Color.fromRGBO(205, 205, 205, 1)),
//                       ),
//                       SizedBox(
//                         width: 30,
//                       ),
//                       Text(
//                         "13+",
//                         style: GoogleFonts.poppins(
//                             fontSize: 17,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
                
//                   Text(
//                     "Storyline",
//                     style: GoogleFonts.poppins(
//                         fontSize: 24,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     "As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows :",
//                     style: GoogleFonts.poppins(
//                         fontSize: 14,
//                         color: Colors.white,
//                         fontWeight: FontWeight.w400),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),     
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }






class CommingSoonDetailScreen extends StatelessWidget {
  final CommingSoonModel movie;

  const CommingSoonDetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 240,
                child: Image.asset(
                  movie.img,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 160,
                left: 10,
                right: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.7), Color(0xff1C1C1C).withOpacity(0.9), ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        // spreadRadius: 5,
                        // blurRadius: 10,
                        // offset: Offset(0, 5),
                        
                      ),
                    ],
                    // border: Border.all(color: const Color.fromARGB(255, 48, 48, 48))
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.title,
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 5),
                       
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Release Date",
                                  style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Text(
                                  movie.releaseDate,
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),

                            const SizedBox(width: 50,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Available in",
                                  style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Text(
                                  movie.language,
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 120),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Movie genre :",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Color.fromRGBO(205, 205, 205, 1)),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movie.genre,
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Text(
                        "Censorship :",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Color.fromRGBO(205, 205, 205, 1)),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        movie.censorship,
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    "Storyline",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    movie.storyline,
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
