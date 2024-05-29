import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Raizz",
          style: GoogleFonts.poppins(fontSize: 16),
        ),
        leading: SvgIconButton(
          iconPath: 'assets/Hamburger_MD.svg',
          onPressed: () {
            // Do something here
          },
        ),
        actions: [
          SvgIconButton(
              iconPath: "assets/Bell.svg",
              onPressed: () {
                // Do something here
              })
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            margin: const EdgeInsets.all(24),
            decoration:  BoxDecoration(
              color: Color(0xFFEBF9F9),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.125,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.11,
                          ),
                          Text("View full profile",style: TextStyle(fontSize: 8,color: Color(0xFF44B4B3)),)
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nikhil Raizada",style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w600),),
                        Text("4 years Experience",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color:Color(0xFF44B4B3)),),
                       Container(
                         width: 100,
                         child:  Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Rating",style: GoogleFonts.poppins(fontSize: 10),),
                             Row(
                               children: [
                                 Icon(Icons.star,size: 12,),
                                 Icon(Icons.star,size: 12,),
                                 Icon(Icons.star,size: 12,),
                                 Icon(Icons.star,size: 12,),
                                 Icon(Icons.star,size: 12,),
                               ],
                             )
                           ],
                         ),
                       )
                      ],
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}


class SvgIconButton extends StatelessWidget {
  final String iconPath;
  final double iconSize;
  final VoidCallback onPressed;

  const SvgIconButton({
    Key? key,
    required this.iconPath,
    this.iconSize = 24,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        iconPath,
        width: iconSize,
        height: iconSize,
      ),
      onPressed: onPressed,
    );
  }
}