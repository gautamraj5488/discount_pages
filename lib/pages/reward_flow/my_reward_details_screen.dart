import 'package:discounts_pages/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

import '../../utils/helpers/network_image.dart';

class MyRewardDetailsScreen extends StatefulWidget {
  final String imageUrl;
  const MyRewardDetailsScreen({super.key, required this.imageUrl});

  @override
  State<MyRewardDetailsScreen> createState() => _MyRewardDetailsScreenState();
}

class _MyRewardDetailsScreenState extends State<MyRewardDetailsScreen> {
  String imageUrl =
      "https://s3-alpha-sig.figma.com/img/d0ee/22fc/2a71154a807b3aeeda1b8201ebe7b73a?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PN6kGZ98QnmOW9-249HPw5nhfF5F5EQ7scDxdD88ZF7GixSy34hIZLbovJgdM~z7N5g1QmeCeQxXD0U5vMH0MzxAGEa92YmK2KObNb6W1vzWeY4x~OKqwPFc6zgvJRk1HgL-9bFZyV5D4qke41puebOtHGHcUtPf1~-YbvjKFAo~lj2lIRvcJK9iy6PA97eVxe6CqMOL5-IcvUdhk9vIvoLM5bEvPK-lrOBpmMX0QG2YFdujv1N-fSQYlg8-vLauVHzxG~aQ9xadg6zQkbF7V2E5FsKX-sdz28TlLGh8Op4G~WK4gv8Iw1gufeg40qn4M55c1cCkZ0Yt4SaghmDOXA__";
  final TextEditingController _controller =
      TextEditingController(text: "          ".replaceAll(" ", "⬮"));
  @override
  Widget build(BuildContext context) {
    double width = DeviceUtils.getScreenWidth(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                IconlyBroken.arrow_left,
                color: Colors.white,
              ),
            ),
            expandedHeight: width * 0.6,
            flexibleSpace: NetworkImageWithPlaceholder(
              imageUrl: widget.imageUrl,
              borderRadiusGeometry: BorderRadius.circular(0),
            ),
            title: Text(
              "Café Voucher",
              style: GoogleFonts.urbanist(
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   child: Container(
          //     padding: EdgeInsets.symmetric(vertical: 3,horizontal: 16),
          //     child: SizedBox(
          //       width: double.infinity,
          //       child: ElevatedButton(
          //         onPressed: (){},
          //         child: Row(
          //           children: [
          //             Icon(Icons.qr_code),
          //             Text("Redeem Now")
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 22),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(imageUrl),
                        minRadius: 25,
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Text(
                        "Amado Café",
                        style: GoogleFonts.urbanist(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Get Rs.200 Off\n",
                          style: GoogleFonts.urbanist(
                              fontSize: 24, fontWeight: FontWeight.w600)),
                      TextSpan(
                          text: "From XYZ Café, on a minimum order of Rs.1000. ",
                          style: GoogleFonts.urbanist(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ])),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 28),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(50)
                  // ),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xFFE9E9E9)),
                        padding: const EdgeInsets.all(12),
                        width: double.infinity,
                        height: 60,
                        child: TextField(
                          controller: _controller,
                          obscureText: true,
                          readOnly: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xFF4DCEDD)),
                        alignment: Alignment.center,
                        width: width * 0.35,
                        height: 60,
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "Get Code",
                          style: GoogleFonts.urbanist(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Details\n",
                        style: GoogleFonts.urbanist(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.2),
                      ),
                      WidgetSpan(
                        child: SizedBox(height: 32),
                      ),
                      TextSpan(
                        text:
                        "- Earn points for every dollar spent on purchases.\n",
                        style: GoogleFonts.urbanist(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF212121),
                        ),
                      ),
                      TextSpan(
                        text:
                        "- Earn accelerated points on specific spending.\n",
                        style: GoogleFonts.urbanist(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF212121),
                        ),
                      ),
                      TextSpan(
                        text:
                        "- Offer a bonus points package upon card approval.\n",
                        style: GoogleFonts.urbanist(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF212121),
                        ),
                      ),
                      TextSpan(
                        text:
                        "- Earn points for every dollar spent on purchases.\n",
                        style: GoogleFonts.urbanist(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF212121),
                        ),
                      ),
                      TextSpan(
                        text:
                        "- Earn accelerated points on specific spending.\n",
                        style: GoogleFonts.urbanist(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF212121),
                        ),
                      ),
                      TextSpan(
                        text:
                        "- Offer a bonus points package upon card approval.",
                        style: GoogleFonts.urbanist(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF212121),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF18C6BF),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.qr_code),
                          Text("Redeem Now")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
