import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/model/comming_soon_model.dart';
import 'package:movie_app/model/now_playing_model.dart';
import 'package:movie_app/view/comming_soon_detail_screen.dart';
import 'package:movie_app/view/movie_detail_screen.dart';
import 'package:movie_app/widget/now_playing_card.dart';


class MovieInfo extends StatefulWidget {
  const MovieInfo({super.key});

  @override
  State<MovieInfo> createState() => _MovieInfoState();
}


final List<NowPlayingModel> nowPlayingMovies = [
  NowPlayingModel(
    img: "assets/KANGUVA.jpg",
    title: "KANGUVA",
    genre: "Action, Adventure",
    star: "4.3",
    censorship: "16+",
    duration: "2h 47m",
    language: "Hindi",
    storyline: "Directed by Siva, 'Kanguva' is described as a fantasy action drama that spans over 1,500 years into the past, featuring epic battle sequences and grand visuals. Suriya plays a dual role as a warrior named Kanguva in the past and a contemporary character named Francis",
    staricon: starIconView(1),
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
    img: "assets/Singham Again.jpg",
    title: "Singham Again",
    genre: "Action, Drama",
    star: "4.1",
    staricon: starIconView(4),
    censorship: "13+",
    duration: "3h 1m",
    language: "Hindi",
    storyline: "Singham Again is a 2024 Hindi-language action film about Bajirao Singham (Ajay Devgn) who must rescue his kidnapped wife...",
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
];

final List<CommingSoonModel> commingSoonMovies = [
  CommingSoonModel(
    title: "Pushpa 2",
    genre: "Action, Thriller",
    releaseDate: "5 Dec 2024",
    language: "Hindi",
    availableIn: "Hindi",
    storyline: "The Rule is an upcoming Telugu-language action drama film that continues the story of Pushpa Raj, a daily wage worker who rises through the ranks of a red sandalwood smuggling syndicate",
    img: "assets/pushpa 2.jpg",
    censorship: "18+",
  ),
  CommingSoonModel(
    title: "Game Changer",
    genre: "Drama / Politics",
    releaseDate: "10 Jan 2025",
    language: "Telugu",
    availableIn: "Hindi",
    storyline: "This upcoming Indian political action drama is about an honest IAS officer who fights against corruption by advocating for fair elections. The film is written and directed by S. Shankar and stars Ram Charan, Kiara Advani, and S.J. Suryah. It is expected to be released in January 2025",
    img: "assets/Game Changer.jpg",
    censorship: "13+",
  ),
  CommingSoonModel(
    title: "Mufasa: The Lion King",
    genre: "Animation, Adventure",
    releaseDate: "20 Dec 2024",
    language: "English",
    availableIn: "Hindi",
    storyline: "Mufasa: The Lion King is a 2024 animated adventure drama film that tells the origin story of Mufasa, the father of Simba in The Lion King",
    img: "assets/Mufasa.jpg",
    censorship: "16+",
  ),
];

class _MovieInfoState extends State<MovieInfo> {
  bool showNowPlaying = true;

  @override
  Widget build(BuildContext context) {
    // Dynamically choose the list
    final List<dynamic>  movies = showNowPlaying ? nowPlayingMovies : commingSoonMovies;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // Toggle Bar
            SafeArea(
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xff1C1C1C),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => setState(() => showNowPlaying = true),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          color: showNowPlaying ? Colors.amber : const Color(0xff1C1C1C),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "Now Playing",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: showNowPlaying ? Colors.black : Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showNowPlaying = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          color: showNowPlaying ? const Color(0xff1C1C1C) : Colors.amber,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "Coming Soon",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: showNowPlaying ? Colors.grey : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),

            
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(1),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.53,
                ),
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  final movie = movies[index];
                  return GestureDetector(
                    onTap: () {
                      if (showNowPlaying) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MovieDetailScreen(movie: movie),
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CommingSoonDetailScreen(movie: movie),
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  blurRadius: 4,
                                  offset: Offset(0, 2), // Shadow position
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                              child: Image.asset(
                                movie.img, 
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              movie.title,
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    movie.genre,
                                    style: GoogleFonts.poppins(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
