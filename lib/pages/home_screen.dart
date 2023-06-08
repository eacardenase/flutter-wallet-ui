import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:flutter_wallet_app/util/credit_card.dart';
import 'package:flutter_wallet_app/util/button_icon.dart';
import 'package:flutter_wallet_app/util/custom_list_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _dummyCards = [
    CreditCard(
      balance: 5250.20,
      cardNumber: 2380,
      color: Colors.deepPurple[300],
      expireMonth: 10,
      expireYear: 24,
    ),
    CreditCard(
      balance: 250.50,
      cardNumber: 2038,
      color: Colors.blue[300],
      expireMonth: 10,
      expireYear: 24,
    ),
    CreditCard(
      balance: 342.23,
      cardNumber: 2308,
      color: Colors.pink[200],
      expireMonth: 10,
      expireYear: 24,
    ),
  ];

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink.shade300,
        child: const Icon(
          Icons.monetization_on_rounded,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home_rounded,
                  size: 35,
                  color: Colors.pink.shade200,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings_rounded,
                  size: 35,
                  color: Colors.pink.shade200,
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Row(
                children: [
                  const Text(
                    'My',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    ' Cards',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(
                      4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: _dummyCards,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
              controller: _controller,
              count: _dummyCards.length,
            ),
            const SizedBox(
              height: 25,
            ),
            // 3 buttons (send, pay, bills)
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonIcon(
                    iconImagePath: 'assets/icons/send-money.png',
                    buttonText: 'Send',
                  ),
                  ButtonIcon(
                    iconImagePath: 'assets/icons/credit-card.png',
                    buttonText: 'Send',
                  ),
                  ButtonIcon(
                    iconImagePath: 'assets/icons/bill.png',
                    buttonText: 'Send',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Column(
                children: [
                  CustomListTile(
                    iconImagePath: 'assets/icons/statistics.png',
                    tileTitle: 'Statistics',
                    tileSubtitle: 'Payments and Incomes',
                  ),
                  CustomListTile(
                    iconImagePath: 'assets/icons/transaction.png',
                    tileTitle: 'Transactions',
                    tileSubtitle: 'Transactions History',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
