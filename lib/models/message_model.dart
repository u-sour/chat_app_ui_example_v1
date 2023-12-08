class MessageModel {
  final String message;
  final bool isCurrentUser;
  final String date;
  final bool seen;
  const MessageModel({
    required this.message,
    required this.isCurrentUser,
    required this.date,
    required this.seen,
  });
}
