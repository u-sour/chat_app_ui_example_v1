class ContactModel {
  final String name;
  final String imgPath;
  final bool isCurrentUser;
  final bool isOnline;
  const ContactModel(
      {required this.name,
      required this.imgPath,
      required this.isCurrentUser,
      required this.isOnline});
}
