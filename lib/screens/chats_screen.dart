import 'package:flutter/material.dart';
import '../models/action_btn_model.dart';
import '../models/chat_model.dart';
import '../models/contact_model.dart';
import '../utils/constants.dart';
import '../widgets/drawer.dart';
import 'chat_screen.dart';

class ChatsScreen extends StatefulWidget {
  final String title;
  const ChatsScreen({super.key, required this.title});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  // final GlobalKey<> drawer = GlobalKey();
  final List<ContactModel> contacts = const [
    ContactModel(
        name: 'Beth Ramos',
        imgPath: 'assets/images/profiles/Beth Ramos.jpg',
        isCurrentUser: true,
        isOnline: true),
    ContactModel(
        name: 'Andrea Reyes',
        imgPath: 'assets/images/profiles/Andrea Reyes.jpg',
        isCurrentUser: false,
        isOnline: true),
    ContactModel(
        name: 'Angel Ross',
        imgPath: 'assets/images/profiles/Angel Ross.jpg',
        isCurrentUser: false,
        isOnline: true),
    ContactModel(
        name: 'Derek Mcdonalid',
        imgPath: 'assets/images/profiles/Derek Mcdonalid.jpg',
        isCurrentUser: false,
        isOnline: false),
  ];
  final List<ActionBtnModel> actionBtns = const [
    ActionBtnModel(text: 'Chats', isActive: true),
    ActionBtnModel(text: 'Story', isActive: false),
    ActionBtnModel(text: 'Call', isActive: false),
  ];
  final List<ChatModel> chats = const [
    ChatModel(
        name: 'Chloe Cooper',
        imgPath: 'assets/images/profiles/Chloe Cooper.jpg',
        message:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        date: '9:50 AM'),
    ChatModel(
        name: 'Cindy Carpenter',
        imgPath: 'assets/images/profiles/Cindy Carpenter.jpg',
        message:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        date: '10:50 AM'),
    ChatModel(
      name: 'dwight welch',
      imgPath: 'assets/images/profiles/dwight welch.jpg',
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      date: 'Yesterday',
    ),
    ChatModel(
      name: 'Ian Franklin',
      imgPath: 'assets/images/profiles/Ian Franklin.jpg',
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      date: 'Yesterday',
    ),
    ChatModel(
      name: 'Jackson Simpson',
      imgPath: 'assets/images/profiles/Jackson Simpson.jpg',
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      date: 'Yesterday',
    ),
    ChatModel(
      name: 'jeanne brewer',
      imgPath: 'assets/images/profiles/jeanne brewer.jpg',
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      date: 'Yesterday',
    ),
    ChatModel(
      name: 'Jenny Grant',
      imgPath: 'assets/images/profiles/Jenny Grant.jpg',
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      date: 'Yesterday',
    ),
    ChatModel(
      name: 'Marcus Garcia',
      imgPath: 'assets/images/profiles/Marcus Garcia.jpg',
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      date: 'Yesterday',
    ),
    ChatModel(
      name: 'Nelson Robinson',
      imgPath: 'assets/images/profiles/Nelson Robinson.jpg',
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      date: 'Yesterday',
    ),
    ChatModel(
      name: 'Sophie Brown',
      imgPath: 'assets/images/profiles/Sophie Brown.jpg',
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      date: 'Yesterday',
    ),
    ChatModel(
      name: 'Tracey Perez',
      imgPath: 'assets/images/profiles/Tracey Perez.jpg',
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      date: 'Yesterday',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppThemeColors.primary,
      appBar: AppBar(
        elevation: 0.0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      drawer: const DrawerWidget(),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 180.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Column(children: [
                const SizedBox(height: 20.0),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: contacts.length,
                    itemBuilder: (BuildContext context, int index) {
                      final bool isCurrentUser = contacts[index].isCurrentUser;
                      final bool isOnline = contacts[index].isOnline;
                      final String imgPath = contacts[index].imgPath;
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: isCurrentUser
                            ? Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 48.0,
                                    backgroundImage: Image.asset(
                                      imgPath,
                                      fit: BoxFit.cover,
                                    ).image,
                                  ),
                                  Positioned(
                                      bottom: 1,
                                      right: 1,
                                      child: IconButton.filled(
                                          alignment: Alignment.center,
                                          style: IconButton.styleFrom(
                                            backgroundColor:
                                                AppThemeColors.primary,
                                          ),
                                          onPressed: () {},
                                          icon: const Icon(Icons.add)))
                                ],
                              )
                            : CircleAvatar(
                                radius: 48.0,
                                backgroundColor: isOnline
                                    ? AppThemeColors.primary
                                    : Colors.grey[300],
                                child: CircleAvatar(
                                  radius: 32.0,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 30.0,
                                    backgroundImage: Image.asset(
                                      imgPath,
                                      fit: BoxFit.cover,
                                    ).image,
                                  ),
                                ),
                              ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20.0),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 48.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...actionBtns.map(
                          (e) => e.isActive
                              ? TextButton(
                                  onPressed: () {},
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        bottom:
                                            3 // space between underline and text
                                        ),
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                      color: AppThemeColors
                                          .primary, // Text colour here
                                      width: 3.0, // Underline width
                                    ))),
                                    child: Text(
                                      e.text,
                                      style: const TextStyle(
                                          color: AppThemeColors.primary,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))
                              : TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    e.text,
                                    style: TextStyle(
                                        color: AppThemeColors.primary[300]),
                                  )),
                        )
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ),
          Positioned(
            top: 200.0,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (BuildContext context, int index) {
                  final String imagePath = chats[index].imgPath;
                  final String name = chats[index].name;
                  final String message = chats[index].message;
                  final String date = chats[index].date;
                  return InkWell(
                    borderRadius: BorderRadius.circular(30.0),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => ChatScreen(
                                    fromUserImgPath:
                                        'assets/images/profiles/Beth Ramos.jpg',
                                    toUserImgPath: imagePath,
                                    toUsername: name,
                                  )));
                    },
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 32.0,
                                        backgroundImage:
                                            Image.asset(imagePath).image,
                                      ),
                                      const SizedBox(width: 8.0),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  name,
                                                  style: theme
                                                      .textTheme.titleMedium
                                                      ?.copyWith(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                ),
                                                Text(
                                                  date,
                                                  style: theme
                                                      .textTheme.bodySmall
                                                      ?.copyWith(
                                                          color:
                                                              Colors.white70),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 60.0),
                                              child: Text(
                                                message,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme.textTheme.bodySmall
                                                    ?.copyWith(
                                                        color: Colors.white70),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(indent: 70)
                              ],
                            ),
                          ],
                        )),
                  );
                }),
          )
        ],
      ),
    );
  }
}
