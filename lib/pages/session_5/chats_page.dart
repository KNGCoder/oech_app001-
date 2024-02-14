import 'package:flutter/material.dart';
import 'package:oech_app001/widgets/chat_card_widget.dart';
import 'package:oech_app001/widgets/search_bar_widget.dart';

class ChatsPage extends StatelessWidget {
  static const routeName = '/chats-page';
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    offset: const Offset(0, 2),
                    blurRadius: 5,
                    spreadRadius: 0,
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset('assets/images/s5_icon_arrow-left.png'),
                  ),
                  const Text(
                    'Chats',
                    style: TextStyle(
                      color: Color(0xffA7A7A7),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 24),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Column(
                children: [
                  SearchBarWidget(),
                  SizedBox(height: 25),
                  ChatCardWidget(
                    imgName: 's5_ava_John.png',
                    name: 'John Joshua',
                    subtitle: 'Thanks for your service',
                    indexMessage: 1,
                  ),
                  SizedBox(height: 16),
                  ChatCardWidget(
                    imgName: 's5_ava_Chinonso.png',
                    name: 'Chinonso James',
                    subtitle: 'Alright, I wll be waiting',
                    indexMessage: 0,
                  ),
                  SizedBox(height: 16),
                  ChatCardWidget(
                    imgName: 's5_ava_Raph.png',
                    name: 'Raph Ron',
                    subtitle: 'Thanks for your service',
                    indexMessage: 5,
                  ),
                  SizedBox(height: 16),
                  ChatCardWidget(
                    imgName: 's5_ava_Joy.png',
                    name: 'Joy Ezekiel',
                    subtitle: 'Thanks for your service',
                    indexMessage: 0,
                  ),
                  SizedBox(height: 16),
                  ChatCardWidget(
                    imgName: 's5_ava_Joy2.png',
                    name: 'Joy Ezekiel',
                    subtitle: 'Thanks for your service',
                    indexMessage: 1,
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
