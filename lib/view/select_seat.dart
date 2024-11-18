import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/model/now_playing_model.dart';
import 'package:movie_app/view/payment_screen.dart';
import 'package:movie_app/widget/seat.dart';
import 'package:movie_app/widget/select_date.dart';
import 'package:movie_app/widget/select_time.dart';
import 'package:movie_app/widget/custom_snackbar.dart';

class SelectSeat extends StatefulWidget {
  final NowPlayingModel movie;

  const SelectSeat({super.key, required this.movie});

  @override
  State<SelectSeat> createState() => _SelectSeatState();
}

class _SelectSeatState extends State<SelectSeat> {
  DateTime selectedDate = DateTime.now();
  String selectedTime = "";
  double totalPrice = 0.0;
  List<String> selectedSeats = [];

  void onDateSelected(DateTime date) {
    setState(() {
      selectedDate = date;
    });
  }


  void onTimeSelected(String time) {
    setState(() {
      selectedTime = time;
    });
  }


  void onSeatsSelected(List<String> seats, double price) {
    setState(() {
      selectedSeats = seats;
      totalPrice = price;
    });
  }

  Widget seatAvailable(int color, String title) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(color: Color(color)),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
            color: const Color(0xffF2F2F2),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    print('Received movie: ${widget.movie.title}');

    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        backgroundColor: const Color(0xff000000),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Select Seat",
          style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: const Color(0xffF2F2F2),
              height: 36),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SvgPicture.asset(
            "assets/Mscreen.svg",
            height: 90,
            colorFilter: const ColorFilter.linearToSrgbGamma(),
          ),
          // Seat selection
          SizedBox(
            height: 340,
            child: SeatSelectionScreen(
              onTotalChanged: onSeatsSelected,
              onSeatSelected: (List<String> seats) {},
            ),
          ),

          // Seat information
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                seatAvailable(0xff1C1C1C, "Available"),
                seatAvailable(0xff261D08, "Reserved"),
                seatAvailable(0xffFCC434, "Selected"),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Select Date & Time",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color(0xffF2F2F2),
            ),
          ),

          
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 100,
            child: SelectDate(onDateSelected: onDateSelected),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
            child: SelectTime(onTimeSelected: onTimeSelected),
          ),

          
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: const Color(0xffF2F2F2),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "₹ ${totalPrice.toStringAsFixed(2)}",
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: const Color(0xffFCC434),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                // onTap: () {
                //   Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => PaymentScreen(
                //     date: selectedDate,
                //     time: selectedTime,
                //     seats: selectedSeats,
                //     totalPrice: totalPrice,
                //     movie: widget.movie,
                //   ),
                //   ));
                // },
                onTap: () {
                  if (selectedSeats.isEmpty || selectedTime.isEmpty) {
                      CustomSnackbar.showSnackbar(
                        context: context,
                        message: "Please select a time and at least one seat",
                        icon: Icons.info_outline,
                        backgroundColor: const Color(0xffFCC434),
                        textColor: Colors.black87,
                      );

                    
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return PaymentScreen(
                          date: selectedDate,
                          time: selectedTime,
                          seats: selectedSeats,
                          totalPrice: totalPrice,
                          movie: widget.movie,
                        );
                        }
                      ),
                    );
                  }
                },
                child: Container(
                  height: 50,
                  width: 190,
                  decoration: BoxDecoration(
                    color: const Color(0xffFCC434),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Center(
                    child: Text(
                      "Buy Ticket",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff000000)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
