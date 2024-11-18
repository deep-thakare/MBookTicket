import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {

  List<Map> ticketCard = [
    {
      "img":"assets/t1.jpg",
      "title":"Batman v Superman: Da",
      "time":"2h35m",
      "date":"16.12.2022",
    },
    {
      "img":"assets/t2.png",
      "title":"Avengers: Infinity War",
      "time":"2h15m",
      "date":"16.12.2022",
    },
    {
      "img":"assets/t3.png",
      "title":"Guardians Of The Galaxy",
      "time":"2h15m",
      "date":"16.12.2022",
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
          "My Ticket",
          style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: const Color(0xffF2F2F2),
              height: 36),
        ),
      ),

      body: ListView.builder(
        itemCount: ticketCard.length,
        itemBuilder: (conText, index) {
          return GestureDetector(
            onTap: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => TicketScreen(),));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff1C1C1C),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width*0.30,
                      
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                        ticketCard[index]["img"],
                        ),
                      ),
                    ),
                
                  const SizedBox(width: 20,),
                
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Text(
                          ticketCard[index]["title"],
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffF2F2F2),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_rounded,
                              color: Color(0xffF2F2F2),
                              size: 20,
                            ),
                            const SizedBox(width: 10,),   
                            Text(
                              ticketCard[index]["time"],
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffF2F2F2)
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),  
                        Row(
                          children: [
                             Icon(
                              Icons.date_range,
                              color: Color(0xffF2F2F2),
                              size: 20,
                            ),
                            const SizedBox(width: 10,),
                            Text(
                                  ticketCard[index]["date"],
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffF2F2F2)
                                  ),
                                ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
      
    );
  }
}