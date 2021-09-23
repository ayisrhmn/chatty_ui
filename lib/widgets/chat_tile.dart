import 'package:chatty_ui/pages/chat_page.dart';
import 'package:chatty_ui/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  const ChatTile({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.text,
    required this.time,
    required this.unread,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => const ChatPage(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 55,
              height: 55,
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: textTitle,
                ),
                Text(
                  text,
                  style: unread ? textSubtitle.copyWith(
                    color: blackColor,
                  ) : textSubtitle,
                ),
              ],
            ),
            const Spacer(),
            Text(
              time,
              style: textSubtitle,
            ),
          ],
        ),
      ),
    );
  }
}