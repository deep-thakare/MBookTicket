import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/model/now_playing_model.dart';
import 'package:movie_app/view/movie_detail_screen.dart';


class MovieSliderCard extends StatefulWidget {
  const MovieSliderCard({super.key});

  @override
  State<MovieSliderCard> createState() => _MovieSliderCardState();
}

final List<NowPlayingModel> nowPlayingMovies = [
    NowPlayingModel(
      img: "assets/KANGUVA.jpg",
      title: "Kanguva",
      genre: "Action, Adventure, Fantasy",
      star: "4.3",
      staricon: starIconView(3),
      censorship: "16+",
      duration: "2h 47m",
      language: "Hindi",
      storyline: "Directed by Siva, 'Kanguva' is described as a fantasy action drama that spans over 1,500 years into the past, featuring epic battle sequences and grand visuals. Suriya plays a dual role as a warrior named Kanguva in the past and a contemporary character named Francis",
      
    ),
    NowPlayingModel(
      img: "assets/Singham Again.jpg",
      title: "Singham Again",
      genre: "Action, Drama",
      star: "4.1",
      staricon: starIconView(4),
      censorship: "13+",
      duration: "3h 1m",
      language: "Hindi",
      storyline: "Singham Again is a 2024 Hindi-language action film about Bajirao Singham (Ajay Devgn) who must rescue his kidnapped wife, Avni (Kareena Kapoor Khan), from a terrorist",
    ),
    NowPlayingModel(
      img: "assets/BhoolBhulaiya.jpg",
      title: "Bhool Bhulaiya 3",
      genre: "Comedy, Horror",
      star: "4.2",
      staricon: starIconView(1),
      censorship: "16+",
      duration: "2h 47m",
      language: "Hindi",
      storyline: "Bhool Bhulaiyaa 3, the latest in the popular horror-comedy series, stars Kartik Aaryan as Rooh Baba, a fake exorcist who encounters two spirits both claiming to be the infamous Manjulika in a haunted Kolkata mansion",
    ),
    NowPlayingModel(
      img: "assets/Gladiator 2.jpg",
      title: "Gladiator 2",
      genre: "Action, Drama, Adventure",
      star: "4.7",
      staricon: starIconView(5),
      censorship: "16+",
      duration: "2h 47m",
      language: "English",
      storyline: "Gladiator II is a movie about a man who returns to the Roman Empire to challenge the young emperors Caracalla and Geta, and fulfill his father's vision of a free Rome",
      ),
    // Add other movies here
  ];


  starIconView(int count){
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: count,
        itemBuilder: (context, index) {
          return Icon(
            Icons.star,
            size: 45,
            color: Color(0xffFCC434),
          );
        },
      );
  }

class _MovieSliderCardState extends State<MovieSliderCard> {
  
  
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlayInterval: Duration(seconds: 3),
        height: 600,
        aspectRatio: 1 / 1,
        viewportFraction: 0.7,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: nowPlayingMovies.map((movie) {
        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MovieDetailScreen(movie: movie,),
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: MediaQuery.of(context).size.width * 0.68,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3), // Adjust contrast level
                          BlendMode.softLight,// Overlay for higher contrast
                        ),
                        child: Image.asset(
                          movie.img,
                          fit: BoxFit.cover,
                          height: 400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    movie.title,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffF2F2F2),
                    ),
                  ),
                  Text(
                    movie.genre,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffF2F2F2),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.star, color: Color(0xffFCC434)),
                      const SizedBox(width: 4),
                      Text(
                        movie.star,
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
