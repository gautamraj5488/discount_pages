import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateDiscount extends StatelessWidget {
   CreateDiscount({super.key});

  List title=[
    "Create Coupon code",
    "Create your Discount",
    "Feedback Discount",
    "Marketing Discount"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
      itemCount: title.length,
        itemBuilder: (context,index){
      return ListTile(
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 6),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Color(0xFFE2F0F0)
          ),
          child: Text("Create",style: GoogleFonts.poppins(fontSize: 14,color: const Color(0xFF38A4A4)),),
        ),
        title: Text(title[index],style: GoogleFonts.poppins(fontSize: 14),),
      );
    }, separatorBuilder: (BuildContext context, int index) { return Divider(); },);
  }
}
