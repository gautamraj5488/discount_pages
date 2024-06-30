import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:discounts_pages/pages/reward_flow/reward_card_overlay.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../utils/constants/sizes.dart';
import '../../utils/helpers/network_image.dart';

class ChooseReward extends StatefulWidget {
  const ChooseReward({super.key});

  @override
  State<ChooseReward> createState() => _ChooseRewardState();
}

class _ChooseRewardState extends State<ChooseReward> {
  final String image_url =
      "https://s3-alpha-sig.figma.com/img/fb2a/240c/7a7ebce73ec4d76fda2674001392ddbb?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Cxm1Seu76AevgMuvBHsJ0cF4-Cb9XnkaR4bwG3vqxlak5ECIYdkdiw7RLUoL8pEuqhTI9-voLDPGbgA8Len0amC2S1zoTDvF8geSDJvdnCtKpsBACVcP1xiQ51e0krp1KPL6N9~Mx-glsGLOYLYhxKgzl79EmyGRco9YZ2s6Vg9G8b36qyvw0RClSW8QNQDzl100Q9wbqc1ZwmJ6SOHsQtub84PQrvWj2jb5J3hI80w-zexirL4YLGjCGbPLK2fOMHJ2oKQq-22AilF6Ac~pZoYHk4Py~lwG-FlO46x52NFtxEpjpEXpfw~TzkcxdtasfyCDJEMJXsNZzM0FD~p5hA__";
  List imageUrls = [
    "https://s3-alpha-sig.figma.com/img/fb2a/240c/7a7ebce73ec4d76fda2674001392ddbb?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Cxm1Seu76AevgMuvBHsJ0cF4-Cb9XnkaR4bwG3vqxlak5ECIYdkdiw7RLUoL8pEuqhTI9-voLDPGbgA8Len0amC2S1zoTDvF8geSDJvdnCtKpsBACVcP1xiQ51e0krp1KPL6N9~Mx-glsGLOYLYhxKgzl79EmyGRco9YZ2s6Vg9G8b36qyvw0RClSW8QNQDzl100Q9wbqc1ZwmJ6SOHsQtub84PQrvWj2jb5J3hI80w-zexirL4YLGjCGbPLK2fOMHJ2oKQq-22AilF6Ac~pZoYHk4Py~lwG-FlO46x52NFtxEpjpEXpfw~TzkcxdtasfyCDJEMJXsNZzM0FD~p5hA__",
    "https://s3-alpha-sig.figma.com/img/3de6/eb82/20ea6bfa8b21f091a3fd29f9e5e76b88?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gsRwK~L1popXucyzWHOR-RC~7TOmobfO413GHBxi~WSPOOEXkOyfEjK2SOjZ4lydLKRGVelYoF-CwaokEQhIudoY9Bxw2LZvBk2fzaIa8QP4qYzvlFpkhrMtgchPc64Bj84lFJKDvQoEaIRfnfAMI06MCt18UOJc6ImSh8e1SMQsahlK1DJ7suKAHHz6wWSOn7rw9F7YtZU8tHmRy73g~gG1D~NJC1GTh7egH7KVO1MqWdgMZ7jRe4XT2g6DFOXBUJDeWhdC0NXDz1dx87whdRddqxTlJl~PfTSQFQEjRbyirBI3Mehd7xz59xdGSrYcljWaul7-d0q1-3T6Y2m0Sg__",
    "https://s3-alpha-sig.figma.com/img/0df5/9ef1/f3f4d123838391573672240284945142?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=aLZyHwD0HCL-wQfwOUdIbw32ZwKLYrY6yTdlJYI1VOrv5u4ocTi4I-AmE-Ymu4PutQAcC04cjQgDO5xrR5Lac1Muzp8nVZ70cDW1BB4eSAnpsCTw8czNO9N0cqo3Lj88o45eemY58fWCizsyfHcw7o7OIQRacXJOSGOvaYktjnHFyET7QhIbbKQ4n9ED1Mp0CT9QqUHWkCllkknF0XEN9cvkGmIGgMwX-oW7FRy43f1DIjvt1zRF7mMLe3VdDdrEf5avclK9kdR0Kz7Vry5ERY5rCgACALIv0W8i51g~h~kxlrb68q~8l5IXOiWYCuhuC2MNFLfIiL~cA-mzwKpKwQ__",
    "https://s3-alpha-sig.figma.com/img/b3ce/4bc6/7d6c05f8f927313cc397b2b0eee5573c?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=l84anE6iLmCKpd7NNCUNOwsLz~H97TeWgZCaJd71bU1oQlM9XivLgyqvU~0dvoceMVJVr2gbItCkQ5oEnF7QZ3rqczFBT83rVfIpW5Bz3YUrc33iVVq9Pz67p7Waub9FjPdPcPYlap7Maj1zzeXtXQf5Ac2HxCP722iBG6c2v1ynrjosBlnfW~IDC5jTljYjEj0TcAOykYMA9oTSD~~adh2C07Uc0z3pHlLlbPKMZWRv2v2yfnZZFxVNjgYk2kvxH6U-XNs37UMdQZwpJv0zO1xDkMLgVuRXJNUgnwhauGdBb7saxWjKVVR~Cjou8waWeSi7bLc41e1waMWNNYBzdA__",
    "https://s3-alpha-sig.figma.com/img/f30d/e9be/b812bf319cc87ef2ba3f790cde0c6f52?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SzYUorKw-wFTR0IyRmZtM1chKzZDuH94hbqE6I~zm0l2YBLe7qvrgSjSY1o7yvnLaSMkQiF8pBwzIllkeu1ywWcN5L4UrhPZG7CWlywZxLk4jNLy3OECAw2jWwPe2YKnE1ASPtiCRbt67nrJTbwoiETNduF-bj19wbhdE~gW4vx3TpOkrUFENq5UHpF-lSsJfCdM-eZZ~Xr9J-ni5CQyc-0kKW5fmrNExuWmG2ogEqfwFEIW~rz~aA1I2OCl65unQtwGDaPyJAqCPsAZxQpaqeC1NlHUjy4f4-lzEBEOhoy~jlGV7yO~EC1ZsAku9kwXrGulLOGnpXcN5SFFfDXQiw__"
  ];

  final _controller = ConfettiController();

  void showRewardCardOverlay(
      BuildContext context, String imageUrl, String shopName) {
    showDialog(
      context: context,
      builder: (context) {
        return Stack(
          alignment: Alignment.center,
          children: [
            RewardCardOverlay(imageUrl: imageUrl, shopName: shopName),
            ConfettiWidget(
              confettiController: _controller,
              shouldLoop: false,
              numberOfParticles: 100,
              blastDirectionality: BlastDirectionality.explosive,
              colors: const [
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.orange,
                Colors.purple,
                Colors.yellow,
                Colors.cyan,
                Colors.pink,
                Colors.lime,
                Colors.teal
              ],
              particleDrag: 0.05,
              minBlastForce: 10,
              maxBlastForce: 50,
            ),
          ],
        );
      },
    );
  }

  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(IconlyLight.arrow_left),
        ),
        title: const Text("Choose Your Rewards"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(15.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                    padding:
                        const EdgeInsets.only(bottom: 8, left: 6, right: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      gradient: const LinearGradient(
                        colors: [Colors.black, Colors.transparent],
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
                            style: const TextStyle(
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
                                _controller.play();
                                Future.delayed(Duration(milliseconds:200 ), () {
                                  _controller.stop();
                                });
                                showRewardCardOverlay(
                                  context,
                                  imageUrls[index],
                                  'Cafe Name $index',
                                );
                              },
                              child: const Text('Choose'),
                            )

                          )
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
    );
  }
}
