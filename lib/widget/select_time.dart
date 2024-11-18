import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SelectTime extends StatefulWidget {
  final Function(String) onTimeSelected;

  const SelectTime({required this.onTimeSelected, super.key});

  @override
  State<SelectTime> createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
  int selectedIndex = -1;
  final List<String> times = ["09:00 AM","12:30 PM", "14:30 PM", "16:30 PM", "18:30 PM","21:00 PM"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: times.length,
      itemBuilder: (context, index) {
        bool isSelected = selectedIndex == index;
    
        return Padding(
          padding: const EdgeInsets.only(left: 16),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              widget.onTimeSelected(times[index]);
            },
            child: Container(
              // height: MediaQuery.of(context).size.height*0.8,
              width: MediaQuery .of(context).size.width*0.25,
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected ? const Color(0xffFCC434) : const Color(0xff1C1C1C),
                ),
                color: isSelected ? const Color(0xff261D08) : const Color(0xff1C1C1C),
                borderRadius: BorderRadius.circular(32),
              ),
              child: Center(
                child: Text(
                  times[index],
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xffF2F2F2),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
