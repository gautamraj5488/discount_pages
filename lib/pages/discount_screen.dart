import 'package:discounts_pages/pages/view_discounts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'create_discount.dart';

class DiscountScreen extends StatefulWidget {
  const DiscountScreen({super.key});

  @override
  State<DiscountScreen> createState() => _DiscountScreenState();
}

class _DiscountScreenState extends State<DiscountScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

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
          SizedBox(
            height: 32,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Color(0xFF00AEAD),
                  width: 8,
                  height: 32,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  "Discounts",
                  style: GoogleFonts.poppins(
                      fontSize: 32, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18, vertical: 22),
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(6))),
            padding: EdgeInsets.symmetric(
                horizontal: 20.0), // Add horizontal padding
            width:
                double.infinity, // Make the container expand to the whole width
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                hint: Text(
                  'Shop Name',
                  style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFFA5A0A0)),
                ),
                onChanged: (String? newValue) {
                  // Handle selection
                },
                isExpanded:
                    true, // Make the dropdown button expand to the whole width
                items: <String>[
                  'Material',
                  'Cupertino',
                  'Outlined',
                  'Underline',
                  'Filled',
                  'None',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            // height: 50,
            //margin: EdgeInsets.symmetric(horizontal: 12),
            width: MediaQuery.of(context).size.width*0.9,
            decoration: BoxDecoration(
                color: Color(0xFFF7F7F7), borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TabBar(
                    dividerHeight: 0,
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.white,
                    indicatorColor: Colors.white,
                    indicatorWeight: 2,
                    indicator: BoxDecoration(
                      color: Color(0xFF00AEAD),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    controller: tabController,
                    tabs: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Tab(
                          text: 'Create Discounts',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Tab(
                          text: 'View Discounts',
                        ),
                      ),
                      // Tab(
                      //   text: 'View Discounts',
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children:  [
                CreateDiscount(),
                ViewDiscount(),
              ],
            ),
          )
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
