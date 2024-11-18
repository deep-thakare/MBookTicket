import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


class CouponCode extends StatefulWidget {
  const CouponCode({super.key});

  @override
  State<CouponCode> createState() => _TicketPageState();
}

class _TicketPageState extends State<CouponCode> {
  List<Map> ticketCard = [
    {
      "img": "assets/coupon.png",
      "title": "UPTO 10% OFF",
      "name": "DISCOUNT10",
      "date": "16.12.2022",
    },
    {
      "img": "assets/coupon.png",
      "title": "UPTO 20 % OFF",
      "name": "SAVE20",
      "date": "16.12.2022",
    },
    {
      "img": "assets/coupon.png",
      "title": "UPTO 15% OFF",
      "name": "FREE15",
      "date": "16.12.2022",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff000000),
        centerTitle: true,
        title: Text(
          "CouponCodes",
          style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: const Color(0xffF2F2F2),
              height: 36),
        ),
      ),
      body: ListView.builder(
        itemCount: ticketCard.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff1C1C1C),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.3,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        ticketCard[index]["img"],
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticketCard[index]["title"],
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xffF2F2F2),
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          // It will Copy the coupon CODE
                          Clipboard.setData(ClipboardData(text: ticketCard[index]["name"]));
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('${ticketCard[index]["name"]} copied to clipboard!')),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 250, 219, 133),
                                Color(0xffFCC434),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            border: Border.all(color: const Color.fromARGB(255, 163, 147, 76),width:1)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                            child: Text(
                              ticketCard[index]["name"],
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        "Validity : 31 Dec 2024",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color.fromARGB(255, 191, 190, 190)
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}