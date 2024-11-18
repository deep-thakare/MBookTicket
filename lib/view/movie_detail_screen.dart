import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/model/now_playing_model.dart';
import 'package:movie_app/view/select_seat.dart';


class MovieDetailScreen extends StatelessWidget {
  final NowPlayingModel movie;
  final movie1;
  

  const MovieDetailScreen({super.key,required this.movie, this.movie1});

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
                  movie.img, // Display movie image
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
                  child: Icon(
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
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(20),
                  //   color: const Color.fromRGBO(28, 28, 28, 1),
                  // ),
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.8), Color(0xff1C1C1C).withOpacity(0.7), Color(0xff1C1C1C).withOpacity(0.6)],
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
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.title, // Display movie title
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          movie.duration, // Display genre
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            Text(
                              "Review",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.star,
                              color: Color.fromRGBO(252, 196, 52, 1),
                              size: 19,
                            ),
                            SizedBox(width: 8),
                            Text(
                              movie.star, // Display star rating
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          child: movie.staricon,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Remaining part of the UI for details like storyline, continue button, etc.

          const SizedBox(
            height: 140,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Movie genre :",
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: Color.fromRGBO(205, 205, 205, 1)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      movie.genre,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Censorship :",
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: Color.fromRGBO(205, 205, 205, 1)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      movie.censorship,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Language :",
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: Color.fromRGBO(205, 205, 205, 1)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      movie.language,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
               
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
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => 
                SelectSeat(
                  movie: movie,
                ),
                ));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffFCC434),
                  borderRadius: BorderRadius.circular(64),
                ),
                
                child: Center(
                  child: Text(
                    "Continue",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
