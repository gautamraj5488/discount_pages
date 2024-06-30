import 'package:discounts_pages/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

import '../../utils/helpers/network_image.dart';
import 'my_reward_details_screen.dart';

class MyRewards extends StatefulWidget {
  const MyRewards({super.key});

  @override
  State<MyRewards> createState() => _MyRewardsState();
}

class _MyRewardsState extends State<MyRewards> {
  List imageUrls = [
    "https://s3-alpha-sig.figma.com/img/fb2a/240c/7a7ebce73ec4d76fda2674001392ddbb?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Cxm1Seu76AevgMuvBHsJ0cF4-Cb9XnkaR4bwG3vqxlak5ECIYdkdiw7RLUoL8pEuqhTI9-voLDPGbgA8Len0amC2S1zoTDvF8geSDJvdnCtKpsBACVcP1xiQ51e0krp1KPL6N9~Mx-glsGLOYLYhxKgzl79EmyGRco9YZ2s6Vg9G8b36qyvw0RClSW8QNQDzl100Q9wbqc1ZwmJ6SOHsQtub84PQrvWj2jb5J3hI80w-zexirL4YLGjCGbPLK2fOMHJ2oKQq-22AilF6Ac~pZoYHk4Py~lwG-FlO46x52NFtxEpjpEXpfw~TzkcxdtasfyCDJEMJXsNZzM0FD~p5hA__",
    "https://s3-alpha-sig.figma.com/img/3de6/eb82/20ea6bfa8b21f091a3fd29f9e5e76b88?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gsRwK~L1popXucyzWHOR-RC~7TOmobfO413GHBxi~WSPOOEXkOyfEjK2SOjZ4lydLKRGVelYoF-CwaokEQhIudoY9Bxw2LZvBk2fzaIa8QP4qYzvlFpkhrMtgchPc64Bj84lFJKDvQoEaIRfnfAMI06MCt18UOJc6ImSh8e1SMQsahlK1DJ7suKAHHz6wWSOn7rw9F7YtZU8tHmRy73g~gG1D~NJC1GTh7egH7KVO1MqWdgMZ7jRe4XT2g6DFOXBUJDeWhdC0NXDz1dx87whdRddqxTlJl~PfTSQFQEjRbyirBI3Mehd7xz59xdGSrYcljWaul7-d0q1-3T6Y2m0Sg__",
    "https://s3-alpha-sig.figma.com/img/0df5/9ef1/f3f4d123838391573672240284945142?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=aLZyHwD0HCL-wQfwOUdIbw32ZwKLYrY6yTdlJYI1VOrv5u4ocTi4I-AmE-Ymu4PutQAcC04cjQgDO5xrR5Lac1Muzp8nVZ70cDW1BB4eSAnpsCTw8czNO9N0cqo3Lj88o45eemY58fWCizsyfHcw7o7OIQRacXJOSGOvaYktjnHFyET7QhIbbKQ4n9ED1Mp0CT9QqUHWkCllkknF0XEN9cvkGmIGgMwX-oW7FRy43f1DIjvt1zRF7mMLe3VdDdrEf5avclK9kdR0Kz7Vry5ERY5rCgACALIv0W8i51g~h~kxlrb68q~8l5IXOiWYCuhuC2MNFLfIiL~cA-mzwKpKwQ__",
    "https://s3-alpha-sig.figma.com/img/b3ce/4bc6/7d6c05f8f927313cc397b2b0eee5573c?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=l84anE6iLmCKpd7NNCUNOwsLz~H97TeWgZCaJd71bU1oQlM9XivLgyqvU~0dvoceMVJVr2gbItCkQ5oEnF7QZ3rqczFBT83rVfIpW5Bz3YUrc33iVVq9Pz67p7Waub9FjPdPcPYlap7Maj1zzeXtXQf5Ac2HxCP722iBG6c2v1ynrjosBlnfW~IDC5jTljYjEj0TcAOykYMA9oTSD~~adh2C07Uc0z3pHlLlbPKMZWRv2v2yfnZZFxVNjgYk2kvxH6U-XNs37UMdQZwpJv0zO1xDkMLgVuRXJNUgnwhauGdBb7saxWjKVVR~Cjou8waWeSi7bLc41e1waMWNNYBzdA__",
    "https://s3-alpha-sig.figma.com/img/f30d/e9be/b812bf319cc87ef2ba3f790cde0c6f52?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SzYUorKw-wFTR0IyRmZtM1chKzZDuH94hbqE6I~zm0l2YBLe7qvrgSjSY1o7yvnLaSMkQiF8pBwzIllkeu1ywWcN5L4UrhPZG7CWlywZxLk4jNLy3OECAw2jWwPe2YKnE1ASPtiCRbt67nrJTbwoiETNduF-bj19wbhdE~gW4vx3TpOkrUFENq5UHpF-lSsJfCdM-eZZ~Xr9J-ni5CQyc-0kKW5fmrNExuWmG2ogEqfwFEIW~rz~aA1I2OCl65unQtwGDaPyJAqCPsAZxQpaqeC1NlHUjy4f4-lzEBEOhoy~jlGV7yO~EC1ZsAku9kwXrGulLOGnpXcN5SFFfDXQiw__"
  ];

  final String redeemedImageUrl = "assets/shop.png";
  bool active = true;
  bool redeemed = false;
  @override
  Widget build(BuildContext context) {
    double width = DeviceUtils.getScreenWidth(context);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(IconlyLight.arrow_left),
          ),
          title: const Text("My Rewards"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 28, left: 20, right: 15),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            active = true;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "Active",
                            style: GoogleFonts.urbanist(
                                color: active
                                    ? Color(0xFF18C6BF)
                                    : Color(0xFF898989)),
                          ),
                          decoration: BoxDecoration(
                              color: active
                                  ? Color(0xFF18C6BF).withOpacity(0.2)
                                  : Color(0xFF898989).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(50)),
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 32),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            active = false;
                          });
                        },
                        child: Container(
                          child: Text(
                            "Expired",
                            style: GoogleFonts.urbanist(
                                color: !active
                                    ? Color(0xFF18C6BF)
                                    : Color(0xFF898989)),
                          ),
                          decoration: BoxDecoration(
                              color: !active
                                  ? Color(0xFF18C6BF).withOpacity(0.2)
                                  : Color(0xFF898989).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(50)),
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 32),
                        ),
                      ),
                    ],
                  )),
              active
                  ? GridView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(15.0),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: imageUrls.length,
                      itemBuilder: (context, index) {
                        if(index==0){
                          return GridTile(
                            child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15.0),
                                      ),
                                      height: width*0.25,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15.0),
                                        child: Image.asset(redeemedImageUrl)
                                        // child: Image.asset("assets/img.png",fit: BoxFit.contain,)
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          bottom: 8, left: 6, right: 6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        // gradient: const LinearGradient(
                                        //   colors: [
                                        //     Colors.black,
                                        //     Colors.transparent
                                        //   ],
                                        //   begin: Alignment.bottomCenter,
                                        //   end: Alignment.topCenter,
                                        // ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Win Exciting Vouchers!!',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.urbanist(
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            SizedBox(
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: const Text('View All'),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          );
                          // return RedeemedContainer(redeemedImageUrl: redeemedImageUrl,);
                        }
                        else{
                          return GridTile(
                            child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15.0),
                                        child: NetworkImageWithPlaceholder(
                                          imageUrl: imageUrls[index],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          bottom: 8, left: 6, right: 6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        gradient: const LinearGradient(
                                          colors: [
                                            Colors.black,
                                            Colors.transparent
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Cafe Name $index',
                                              style: GoogleFonts.urbanist(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            const SizedBox(height: 10),
                                            SizedBox(
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyRewardDetailsScreen(imageUrl: imageUrls[index],)));
                                                  },
                                                  child: const Text('Redeem'),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          );
                        }

                      },
                    )
                  : GridView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(15.0),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: imageUrls.length,
                      itemBuilder: (context, index) {
                        return GridTile(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: NetworkImageWithPlaceholder(
                                      imageUrl: imageUrls[index],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      bottom: 8, left: 6, right: 6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    gradient: const LinearGradient(
                                      colors: [
                                        Colors.black,
                                        Colors.transparent
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Cafe Name $index',
                                          style: GoogleFonts.urbanist(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(height: 10),
                                        SizedBox(
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color(0xFF7A7A7A)
                                              ),
                                              onPressed: () {},
                                              child: Text('Expired',style: GoogleFonts.urbanist(
                                                color: Color(0xFFFFFFFF).withOpacity(0.35), // 50% opacity
                                              ),),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ],
          ),
        ));
  }
}
