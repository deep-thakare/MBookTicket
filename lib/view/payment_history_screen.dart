import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentHistoryPage extends StatelessWidget {
 PaymentHistoryPage({super.key});

  final List<Map<String, dynamic>> transactions = [
    {
      'date': '2024-11-10',
      'amount': '\$50.00',
      'status': 'Completed',
    },
    {
      'date': '2024-11-09',
      'amount': '\$30.00',
      'status': 'Completed',
    },
    {
      'date': '2024-11-05',
      'amount': '\$100.00',
      'status': 'Completed',
    },
    {
      'date': '2024-11-01',
      'amount': '\$20.00',
      'status': 'Completed',
    },
    // Add more transactions as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Payment History',
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600,color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            final transaction = transactions[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xff1C1C1C),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 6,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        height: 70,
                        child: Image.asset(
                          "assets/done.png",
                        ),
                      ),

                      const SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [ Text(
                          'Amount: ${transaction['amount']}',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                         Text(
                        transaction['date'],
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white54,
                        ),
                      ),
                        ]
                      ),
                      
                    ],
                  ),
                  
                  const SizedBox(height: 8),
                  Text(
                    'Status: ${transaction['status']}',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.green
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
