import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RewardCardOverlay extends StatelessWidget {
  const RewardCardOverlay({
    super.key,
    required this.imageUrl,
    required this.shopName,
  });

  final String imageUrl;
  final String shopName;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: IntrinsicHeight(
        child: Container(
          constraints: BoxConstraints(
            minWidth: 200,
            maxWidth: 300,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.network(
                  imageUrl,
                  height: 180, // Adjust as needed for the image aspect ratio
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get Rs.200 Off',
                      style: GoogleFonts.urbanist(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'From $shopName, on a minimum order of Rs.1000.',
                      style: GoogleFonts.urbanist(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
