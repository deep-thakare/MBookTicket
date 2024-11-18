import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/model/now_playing_model.dart';
import 'package:movie_app/view/ticket_card_layout.dart';
import 'package:movie_app/widget/custom_snackbar.dart';

class PaymentScreen extends StatefulWidget {
  final NowPlayingModel movie;
  final DateTime date;
  final String time;
  final List<String> seats;
  final double totalPrice;

  PaymentScreen({
    required this.date,
    required this.time,
    required this.seats,
    required this.totalPrice,
    required this.movie,
  });

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  late double finalPrice;
  TextEditingController discountController = TextEditingController();

  // Generate a random order ID
  String generateOrderId() {
  final random = Random();
  return List.generate(10, (_) => random.nextInt(10)).join(); // Generate a 10-digit random number
}


  void applyDiscount() {
    String code = discountController.text.trim();
    if (code == "DISCOUNT10") {
      setState(() {
        finalPrice = widget.totalPrice * 0.9; // 10% discount on total price
      });
      showMessage("10% discount applied!");
    } else if (code == "SAVE20") {
      setState(() {
        finalPrice = widget.totalPrice * 0.8; // 20% discount on total price
      });
      showMessage("20% discount applied!");
    }else if(code == "FREE15"){
      setState(() {
        finalPrice = widget.totalPrice * 0.85; // 15 disccount on total price
      });
    }else {
      showMessage("Invalid discount code!"); 
    }
  }

  // Show snack bar message
  showMessage(String message) {
    CustomSnackbar.showSnackbar(
      context: context,
      message: message,
      icon: Icons.info_outline,
      backgroundColor: const Color(0xffFCC434),
      textColor: Colors.black87,
    );
  }

  @override
  void initState() {
    super.initState();
    finalPrice = widget.totalPrice; // Initialize with original price
  }

  @override
  Widget build(BuildContext context) {
    String orderId = generateOrderId();

    return Scaffold(
      backgroundColor: Colors.black,
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
          "Payment",
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: const Color(0xffF2F2F2),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            // minHeight: MediaQuery.of(context).size.height, // Ensures it takes at least the screen height
          ),
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [

                  Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color.fromRGBO(28, 28, 28, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              widget.movie.img,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width*0.24,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.movie.title,
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(252, 196, 52, 1),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Icon(Icons.date_range_rounded, color: Colors.white),
                                  const SizedBox(width: 10),
                                  Text(
                                    "${widget.date.day}/${widget.date.month}/${widget.date.year}",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  const Icon(Icons.alarm_outlined, color: Colors.white),
                                  const SizedBox(width: 10),
                                  Text(
                                    widget.time,
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
            
                  // Order Details
                  buildDetailRow("Order ID", orderId),
                  const SizedBox(height: 10),
                  buildDetailRow("Seat", widget.seats.join(", ")),
                  const SizedBox(height: 10),
                  buildDetailRow("Total Price", "₹${finalPrice.toStringAsFixed(2)}"),
                  const SizedBox(height: 15),
            
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color(0xff1C1C1C),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: discountController,
                            style: GoogleFonts.poppins(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "Discount Code",
                              hintStyle: GoogleFonts.poppins(color: Colors.grey),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: applyDiscount,
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              color: const Color(0xffFCC434),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                "Apply",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width*0.8,
                    child: Image.asset(
                      
                      "assets/qr.png",
                      color: Colors.white,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 60,),
                  // const SizedBox(),
                  // const Spacer(),
                  
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TicketCard(
                          movie: widget.movie,
                          seatInfo: widget.seats.toString(),
                          time: widget.time,
                          price: finalPrice.toString(),
                          date: widget.date,
                        ),
                      ));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color(0xffFCC434),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Helper widget for details
  Row buildDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
