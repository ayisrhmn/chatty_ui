import 'package:chatty_ui/theme.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget receiverBubble({
      required String imageUrl,
      required String text,
      required String time,
    }) {
      return Container(
        margin: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              imageUrl,
              width: 40,
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: const BoxDecoration(
                color: bubleReceiver,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: textMessage,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: timeMessage,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget senderBubble({
      required String imageUrl,
      required String text,
      required String time,
    }) {
      return Container(
        margin: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: textMessage,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: timeMessage,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Image.asset(
              imageUrl,
              width: 40,
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        width: double.infinity,
        height: 115,
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/grup_ic_a.png',
              width: 55,
              height: 55,
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Jakarta Fair',
                  style: textTitle,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '14,209 members',
                  style: textSubtitle,
                ),
              ],
            ),
            const Spacer(),
            Image.asset(
              'assets/images/call_ic.png',
              width: 35,
              height: 35,
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              receiverBubble(
                imageUrl: 'assets/images/user_pic_a.png',
                text: 'How are ya guys?',
                time: '2:30',
              ),
              receiverBubble(
                imageUrl: 'assets/images/user_pic_b.png',
                text: 'Find here :P',
                time: '2:30',
              ),
              senderBubble(
                imageUrl: 'assets/images/user_pic_c.png',
                text: 'Thinking about how to deal\nwith this client from hell...',
                time: '22:08',
              ),
              receiverBubble(
                imageUrl: 'assets/images/user_pic_d.png',
                text: 'Love them',
                time: '23:11',
              ),
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Type message ...',
              style: textPlaceholder
            ),
            Image.asset(
              'assets/images/btn_send.png',
              width: 35,
              height: 35,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: lightGreyColor,
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}