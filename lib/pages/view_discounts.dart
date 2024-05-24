import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewDiscount extends StatelessWidget {
  ViewDiscount({super.key});

  List title = [
    "Feedback Discount",
    "Management Discount",
  ];

  List coupon = [
    "Create Coupon code",
    "Create your Discount",
    "Feedback Discount",
    "Marketing Discount"
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
              return ListTile(
                trailing: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color(0xFFE2F0F0),
                  ),
                  child: Text(
                    "Create",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color(0xFF38A4A4),
                    ),
                  ),
                ),
                title: Text(
                  coupon[index],
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              );
            },
            childCount: coupon.length,
          ),
        ),
        // Add more sections as needed
      ],
    );
  }
}
