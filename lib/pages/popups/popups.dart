import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PopUps extends StatefulWidget {
  const PopUps({super.key});

  @override
  State<PopUps> createState() => _PopUpsState();
}

class _PopUpsState extends State<PopUps> {
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
      body: SingleChildScrollView(
        child: Container(

          height: MediaQuery.of(context).size.height*0.8,
          decoration: BoxDecoration(
           color: Color(0xFFEBF9F9),
            borderRadius: BorderRadius.circular(12)
          ),
          margin: EdgeInsets.symmetric(horizontal: 24,vertical: 36),
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hair Colour",style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w600),),
              Container(
                height: MediaQuery.of(context).size.height*0.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Description",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600),),
                    Container(
                        height: MediaQuery.of(context).size.height*0.15,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(12),
                        child: SingleChildScrollView(
                          child: Text("Lorem ipsum dolor sit amet consectetur. Ac nulla velit vitae ornare nascetur cras. Sed vitae quis est faucibus. Ultrices convallis ut  nulla velit vitae ornare nascetur cras. Sed vitae quis est faucibus. Ultrices convallis ut",style: GoogleFonts.poppins(color: Color(0xFF44B4B3),fontSize: 12),),
                        )
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Benefits",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600),),
                    Container(
                        height: MediaQuery.of(context).size.height*0.15,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(12),
                        child: SingleChildScrollView(
                          child: Text("Lorem ipsum dolor sit amet consectetur. Ac nulla velit vitae ornare nascetur cras. Sed vitae quis est faucibus. Ultrices convallis ut  nulla velit vitae ornare nascetur cras. Sed vitae quis est faucibus. Ultrices convallis ut",style: GoogleFonts.poppins(color: Color(0xFF44B4B3),fontSize: 12)),
                        )
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Video",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600),),
                    Text("www.videolink",style: GoogleFonts.poppins(fontSize: 12,color: Color(0xFF44B4B3)),),
                    Container(
                      height: MediaQuery.of(context).size.height*0.16,
                      decoration: BoxDecoration(
                        color: Color(0xFFEBEBEB),
                        borderRadius: BorderRadius.circular(12),
                      ),

                    ),
                  ],
                ),
              )

            ],
          ),
        ),
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