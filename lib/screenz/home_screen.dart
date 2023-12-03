import 'package:crypto_cene/util.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 58, 116, 214),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 60),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Crypto cene",
                  style: textStyle(25, const Color.fromARGB(255, 255, 255, 255),
                      FontWeight.w900),
                ),
                ListView.builder(
                  // TODO:pređi kursorom preko svake od ovih
                  //mrzi me da objašnjavam dodatno
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 65, 128, 236),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                255, 58, 116, 214),
                                            offset: const Offset(3, 3),
                                            blurRadius: 4)
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.network(
                                          'https://assets.coingecko.com/coins/images/1/standard/bitcoin.png?1696501400'),
                                    ),
                                  ),
                                  Column(
                                    //PRVA KOLONA
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Shitcoin",
                                        style: textStyle(
                                            15, Colors.white, FontWeight.w600),
                                      ),
                                      Text(
                                        "10%",
                                        style: textStyle(
                                            12, Colors.white, FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),

                              //DRUGA KOLONA
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$ 200",
                                    style: textStyle(
                                        15, Colors.white, FontWeight.w600),
                                  ),
                                  Text(
                                    "BTC",
                                    style: textStyle(
                                        12, Colors.white, FontWeight.w600),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
