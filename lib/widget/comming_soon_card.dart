import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/view/comming_soon_detail_screen.dart';
import 'package:movie_app/model/comming_soon_model.dart';

class CommingSoonCard extends StatefulWidget {
  const CommingSoonCard({super.key});

  @override
  State<CommingSoonCard> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CommingSoonCard> {


  List<CommingSoonModel> commingSoonCard = [
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
      genre: "Action, Adventure, Animation",
      releaseDate: "20 Dec 2024",
      language: "Telugu",
      availableIn: "Hindi",
      storyline: "Mufasa: The Lion King is a 2024 animated adventure drama film that tells the origin story of Mufasa, the father of Simba in The Lion King",
      img: "assets/Mufasa.jpg",
      censorship: "16+",
    ),
  ]; 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: commingSoonCard.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 16),
          child: GestureDetector(
            onTap: (){
             Navigator.of(context).push(
              MaterialPageRoute(
              builder: (context) {
                // Pass the selected movie object to the detail screen
                return CommingSoonDetailScreen(movie: commingSoonCard[index]);
              },
              ),
        );
      },
      child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  // margin: EdgeInsets.all(5),
                  height: MediaQuery.of(context).size.height*0.3,
                  width: MediaQuery.of(context).size.width*0.4,
                  // color: Colors.amber,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3), // Adjust contrast level
                          BlendMode.softLight,// Overlay for higher contrast
                        ),
                      child: Image.asset(
                        fit: BoxFit.fill,
                        commingSoonCard[index].img,
                        
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                  Text(
                    commingSoonCard[index].title,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffFCC434)
                    ), 
                  ),
            
                  Text(
                    commingSoonCard[index].genre,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffDEDEDE)
                    ), 
                  ),
            
                  Text(
                    commingSoonCard[index].releaseDate,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffDEDEDE)
                    ),
                  ),        
              ],
            ),
          ),
        );
      },
    );
  }
}