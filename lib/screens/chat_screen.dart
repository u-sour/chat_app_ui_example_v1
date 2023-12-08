import 'package:chat_app_ui_example_v1/models/message_model.dart';
import 'package:chat_app_ui_example_v1/utils/constants.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String fromUserImgPath;
  final String toUsername;
  final String toUserImgPath;
  const ChatScreen(
      {super.key,
      required this.fromUserImgPath,
      required this.toUsername,
      required this.toUserImgPath});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<MessageModel> messages = const [
    MessageModel(
        message: "Would you like to go the Meher's party with me?",
        isCurrentUser: false,
        date: '05:50 PM',
        seen: true),
    MessageModel(
        message: "Ok,sure! See you tonight.",
        isCurrentUser: true,
        date: '05:53 PM',
        seen: true),
    MessageModel(
        message: "Ok, see you soon.",
        isCurrentUser: false,
        date: '05:53 PM',
        seen: true),
    MessageModel(
        message: "Hey, What's time you get out from work?",
        isCurrentUser: false,
        date: '05:58 PM',
        seen: true),
    MessageModel(
        message: "At 7:00 PM",
        isCurrentUser: true,
        date: '06:00 PM',
        seen: true),
    MessageModel(
        message: "Ok", isCurrentUser: false, date: '06:05 PM', seen: true),
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppThemeColors.scaffoldBgColor,
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: Image.asset(widget.toUserImgPath).image,
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.toUsername,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Online',
                    style: theme.textTheme.bodySmall,
                  )
                ],
              ),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.phone,
                color: AppThemeColors.primary,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.videocam,
                color: AppThemeColors.primary,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final String message = messages[index].message;
                      final bool isCurrentUser = messages[index].isCurrentUser;
                      final String date = messages[index].date;
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 48.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: isCurrentUser
                                  ? MainAxisAlignment.end
                                  : MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                if (!isCurrentUser)
                                  Container(
                                    height: 48.0,
                                    width: 48.0,
                                    margin: const EdgeInsets.only(right: 10.0),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(16.0),
                                            bottomLeft: Radius.circular(16.0)),
                                        image: DecorationImage(
                                            image: Image.asset(isCurrentUser
                                                    ? widget.fromUserImgPath
                                                    : widget.toUserImgPath)
                                                .image)),
                                  ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(20.0),
                                    decoration: BoxDecoration(
                                      color: isCurrentUser
                                          ? Colors.white
                                          : AppThemeColors.primary,
                                      borderRadius: !isCurrentUser
                                          ? const BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomRight:
                                                  Radius.circular(24.0),
                                            )
                                          : const BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomLeft: Radius.circular(24.0),
                                            ),
                                    ),
                                    child: Text(
                                      message,
                                      style: theme.textTheme.bodyLarge
                                          ?.copyWith(
                                              color: !isCurrentUser
                                                  ? Colors.white
                                                  : null),
                                    ),
                                  ),
                                ),
                                if (isCurrentUser)
                                  Container(
                                    height: 48.0,
                                    width: 48.0,
                                    margin: const EdgeInsets.only(left: 10.0),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(16.0),
                                          topRight: Radius.circular(16.0),
                                          bottomRight: Radius.circular(16.0),
                                        ),
                                        image: DecorationImage(
                                            image: Image.asset(isCurrentUser
                                                    ? widget.fromUserImgPath
                                                    : widget.toUserImgPath)
                                                .image)),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: !isCurrentUser
                                  ? MainAxisAlignment.start
                                  : MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 58.0),
                                  child: Text(
                                    date,
                                    style: TextStyle(color: Colors.grey[500]),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    })),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hoverColor: Colors.transparent,
                  contentPadding: const EdgeInsets.all(24.0),
                  prefixIcon: Wrap(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const RotationTransition(
                              turns: AlwaysStoppedAnimation(45 / 360),
                              child: Icon(
                                Icons.attach_file,
                                color: AppThemeColors.primary,
                              ))),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.sentiment_satisfied,
                            color: AppThemeColors.primary,
                          ))
                    ],
                  ),
                  hintText: 'Write a message...',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: IconButton.filled(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        backgroundColor: AppThemeColors.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0)),
                      ),
                      icon: const RotationTransition(
                        turns: AlwaysStoppedAnimation(-45 / 360),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide: BorderSide.none)),
            )
          ],
        ),
      ),
    );
  }
}
