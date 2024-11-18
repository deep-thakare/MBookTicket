import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class SelectDate extends StatefulWidget {
  final Function(DateTime) onDateSelected;

  const SelectDate({required this.onDateSelected, super.key});

  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  DateTime selectedDate = DateTime.now(); // Default to today's date

  @override
  Widget build(BuildContext context) {
    List<DateTime> dates = [
      DateTime.now(),
      DateTime.now().add(const Duration(days: 1)),
      DateTime.now().add(const Duration(days: 2)),
      DateTime.now().add(const Duration(days: 3)),
      DateTime.now().add(const Duration(days: 4)),
      DateTime.now().add(const Duration(days: 5)),
      DateTime.now().add(const Duration(days: 6)),
      DateTime.now().add(const Duration(days: 7)),
      DateTime.now().add(const Duration(days: 8)),
    ];

    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dates.length,
        itemBuilder: (context, index) {
          DateTime currentDate = dates[index];
          bool isSelected = selectedDate.year == currentDate.year &&
                            selectedDate.month == currentDate.month &&
                            selectedDate.day == currentDate.day;

          // Month Format
          String formattedMonth = DateFormat.MMM().format(currentDate);

          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedDate = currentDate; // Update the selected date
                });
                widget.onDateSelected(currentDate); // Pass the selected date to the parent
              },
              child: Container(
                // height: 100,
                width: MediaQuery.of(context).size.width*0.13,
                decoration: BoxDecoration(
                  color: isSelected ? const Color(0xffFCC434) : const Color(0xff1C1C1C),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      formattedMonth, 
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: isSelected ? Colors.black : const Color(0xffF2F2F2),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: 44,
                      width: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFF3B3B3B),
                      ),
                      child: Center(
                        child: Text(
                          "${currentDate.day}", // Display the current day
                          style: GoogleFonts.poppins(
                            color: const Color(0XFFF2F2F2),
                          ),
                        ),
                      ),
                    ),
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



