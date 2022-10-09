import 'package:card_wallet/app/modules/home/views/home_view.dart';
import 'package:card_wallet/component/my_button.dart';
import 'package:card_wallet/component/my_card.dart';
import 'package:card_wallet/component/my_listtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 28,
                  color: Colors.pink[200],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //appbarr
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Cards",
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  //plus butto
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(4),
                      primary: Colors.grey[400],
                      shape: new CircleBorder(),
                    ),
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            //cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5686.98,
                    cardNumber: 7629868,
                    expiryMonth: 02,
                    expiryYear: 34,
                    color: Colors.deepPurple[300],
                  ),
                  MyCard(
                    balance: 896.65,
                    cardNumber: 687246893,
                    expiryMonth: 12,
                    expiryYear: 28,
                    color: Colors.green[300],
                  ),
                  MyCard(
                    balance: 675.65,
                    cardNumber: 89257825,
                    expiryMonth: 08,
                    expiryYear: 67,
                    color: Colors.orange[300],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),
            SizedBox(height: 20),
            //3 buttons -> send + pay +bill
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //sendbutton
                  MyButton(
                    iconImagePath: "assets/icons/send.png",
                    butoonText: "Send",
                  ),
                  //paybutton
                  MyButton(
                    iconImagePath: "assets/icons/credit-card.png",
                    butoonText: "Pay",
                  ),
                  //bills button
                  MyButton(
                    iconImagePath: "assets/icons/bill.png",
                    butoonText: "Bills",
                  ),
                ],
              ),
            ),

            // SizedBox(height:10),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 35.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       //sendbutton
            //       MyButton(
            //         iconImagePath: "assets/icons/send.png",
            //         butoonText: "Send",
            //       ),
            //       //paybutton
            //       MyButton(
            //         iconImagePath: "assets/icons/credit-card.png",
            //         butoonText: "Pay",
            //       ),
            //       //bills button
            //       MyButton(
            //         iconImagePath: "assets/icons/bill.png",
            //         butoonText: "Bills",
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(height: 15),
            //column -> stats + transaction
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //statistics
                  MyListTile(
                    iconImagePath: "assets/icons/statistics.png",
                    tileName: "Statistics",
                    tileSubName: "Payments and Icome",
                  ),
                  //transaction
                  SizedBox(height: 10),
                  MyListTile(
                    iconImagePath: "assets/icons/mobile-transfer.png",
                    tileName: "Transactions",
                    tileSubName: "Transaction History",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
