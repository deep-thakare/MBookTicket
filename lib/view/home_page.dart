import 'package:flutter/material.dart';
import 'package:movie_app/widget/comming_soon_card.dart';
import 'package:movie_app/view/movie_info.dart';
import 'package:movie_app/widget/now_playing_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: SafeArea(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Angelina 👋",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffF2F2F2),
                          ),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffF2F2F2),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.notifications,
                      color: Color(0xffF2F2F2),
                      size: 36,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff1C1C1C),
                ),
                child: TextField(
                  cursorColor: const Color(0xff8C8C8Cf),
                  style: const TextStyle(
                    color: Color(0xff8C8C8C),
                  ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    hintText: "Search",
                    hintStyle:
                        const TextStyle(fontSize: 16, color: Color(0xff8C8C8C)),
                    prefixIcon: const Icon(Icons.search_sharp,
                        color: Color(0xffF2F2F2)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Text(
                    "Now playing",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffF2F2F2)),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MovieInfo(),));
                    },
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFCC434)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 500, child: const MovieSliderCard()),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Text(
                    "Comming Soon",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffF2F2F2)),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => MovieInfo(),));
                    },
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFCC434)),
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 340, child: CommingSoonCard()),          
          ],
        ),
      ),
    );
  }
}
