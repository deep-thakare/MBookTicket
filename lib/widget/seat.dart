import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SeatSelectionScreen extends StatefulWidget {
  final Function(List<String>, double) onTotalChanged; // Modify the callback to pass seats

  SeatSelectionScreen({required this.onTotalChanged, required void Function(List<String> seats) onSeatSelected}); 

  @override
  _SeatSelectionScreenState createState() => _SeatSelectionScreenState();
}

class _SeatSelectionScreenState extends State<SeatSelectionScreen> {
  final int rows = 8;
  final int columns = 10;
  List<bool> seats = [];
  List<String> seatLabels = [];
  double seatPrice = 320.0;
  double totalPrice = 0.0;
  List<String> selectedSeats = [];

  @override
  void initState() {
    super.initState();
    seats = List.generate(rows * columns, (index) => false);
    seatLabels = generateSeatLabels();
  }

  List<String> generateSeatLabels() {
    List<String> labels = [];
    List<String> rowLabels = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];
    for (int row = 0; row < rows; row++) {
      for (int col = 1; col <= columns; col++) {
        labels.add('${rowLabels[row]}$col');
      }
    }
    return labels;
  }

  void updateTotalPrice(int index, bool isSelected) {
    setState(() {
      if (isSelected) {
        totalPrice += seatPrice;
        selectedSeats.add(seatLabels[index]);
      } else {
        totalPrice -= seatPrice;
        selectedSeats.remove(seatLabels[index]);
      }
      widget.onTotalChanged(selectedSeats, totalPrice); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: columns,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: seats.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                seats[index] = !seats[index];
                updateTotalPrice(index, seats[index]);
              });
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: seats[index] ? Colors.yellow : Color(0xff1C1C1C),
              ),
              child: Center(
                child: Text(
                  seatLabels[index],
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: seats[index] ? Colors.black : Color(0XFFBFBFBF),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
