import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewDiscount extends StatelessWidget {
  ViewDiscount({super.key});

  List title = [
    "Feedback Discount",
    "Management Discount",
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Text(
              "Current Discounts",
              style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ),

        SliverList(
          delegate: SliverChildBuilderDelegate(
                (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                decoration: BoxDecoration(
                  color: Color(0xFFF7F7F7),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: ListTile(
                  //tileColor: Color(0xFFF7F7F7),
                  trailing: Text(
                    "20% OFF",
                    style: GoogleFonts.poppins(
                      fontWeight:FontWeight.bold,
                      fontSize: 12,
                      color: const Color(0xFF38A4A4),
                    ),
                  ),
                  title: Text(
                    title[index],
                    style: GoogleFonts.poppins(fontSize: 14),
                  ),
                ),
              );
            },
            childCount: title.length,
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Text(
              "Product Discounts",
              style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ),

        SliverList(
          delegate: SliverChildBuilderDelegate(
                (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                decoration: BoxDecoration(
                    color: Color(0xFFF7F7F7),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: ListTile(
                    trailing: Text(
                      "10% OFF",
                      style: GoogleFonts.poppins(
                        fontWeight:FontWeight.bold,
                        fontSize: 12,
                        color: const Color(0xFF38A4A4),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [

                            Text(
                              "Coupon: ",
                              style: GoogleFonts.poppins(fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "LOREAL10",
                              style: GoogleFonts.poppins(fontSize: 12,fontWeight:FontWeight.bold,color:Color(0xFF00AEAD)),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 6,vertical: 4),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xFF00AEAD)
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text("Loreal",style: GoogleFonts.inter(fontSize: 8),),
                        ),
                      ],
                    ),
                ),
              );
            },
            childCount: 2,
          ),
        ),
        // Add more sections as needed
      ],
    );
  }
}
